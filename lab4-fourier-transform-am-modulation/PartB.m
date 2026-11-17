load('Lab4_Data.mat');

% Plot the magnitude
figure;
subplot(2, 2, 1);
MagSpect(xspeech);
title('Magnitude of xspeech');

subplot(2, 2, 2);
MagSpect(hLPF2000);
title('Magnitude of hLPF2000');

subplot(2, 2, 3);
MagSpect(hLPF2500);
title('Magnitude of hLPF2500');

subplot(2, 2, 4);
MagSpect(hChannel);
title('Magnitude of hChannel');

filtered_speech = conv(xspeech, hLPF2500, 'same'); % Filter the speech signal to limit its bandwidth to 2.5 kHz

% Generate carrier wave for modulation
Fc = 5000; % Lower carrier frequency (5 kHz)
carrier_wave = osc(Fc, length(filtered_speech), 32000);

% Modulate the speech signal
modulated_signal = filtered_speech .* carrier_wave;

% Simulate transmission through the channel
transmitted_signal = conv(modulated_signal, hChannel, 'same');

% Demodulate the signal
demodulated_signal = transmitted_signal .* carrier_wave;

% Use hLPF2000 to filter the demodulated signal and recover the speech signal
recovered_speech = conv(demodulated_signal, hLPF2000, 'same');

% Normalize the recovered speech signal
recovered_speech = (recovered_speech - min(recovered_speech)) / (max(recovered_speech) - min(recovered_speech)) * 2 - 1;

% Ensure the values are in the range [-1, 1] to avoid clipping
recovered_speech = max(min(recovered_speech, 1), -1);

% Listen to the original speech signal
disp('Playing original speech signal...');
sound(xspeech, 32000);
pause(3); % Wait for 3 seconds

% Listen to the recovered speech signal
disp('Playing recovered speech signal...');
sound(recovered_speech, 32000);