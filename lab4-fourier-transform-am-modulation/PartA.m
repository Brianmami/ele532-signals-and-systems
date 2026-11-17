% generate the signal in Figure (1) 
N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

stairs(t,x); grid on; axis([-10,110,-0.1,1.1])
xlabel("t");
ylabel("x(t)");
title("single pulse signal x(t)");
%% fourier transform
Xf = fft(x); %compute the the Fourier Transform of x

f = [-(N/2):1:(N/2)-1]*(1/N); % define the frequency vector f

subplot(211); plot(f,fftshift( abs(Xf))); grid on; %plot abs graph
subplot(212); plot(f,fftshift(angle(Xf))); grid on; %plot ang graph

xhat = ifft(Xf); %n convert the Fourier Transform Xf back to time-domain
%% A1
N = 100; PulseWidth = 10;
t = [-10:1:(N-1)];
z = conv(x,x)

plot(z);
%% A2 convolution in time = multiplication in freq.
% Compute Z(omega) as the squared magnitude of X(omega)
Zf = abs(Xf).^2;

% Plot Z(omega)
figure;
plot(f, fftshift(Zf)); grid on;
xlabel("Frequency");
ylabel("|Z(ω)| = |X(ω)|^2");
title("Magnitude of Z(ω) = X(ω) x X(ω)");
%% A3
%z(t) = x(t)*x(t) ---> Z(ω) = X(ω)X(ω)
%fourier transform of z is Z, so plot Z

% Fourier Transform of z(t) = x(t) * x(t)
Zf = fft(z, N); % Compute Fourier Transform of the convolution result z(t)

% Frequency vector for Z(f)
f_z = (-(N/2):1:(N/2)-1)*(1/N); % Frequency vector

% Plot the magnitude and phase spectra of Z(ω)
figure;

subplot(2, 1, 1);
plot(f_z, fftshift(abs(Zf))); % Magnitude spectrum
grid on;
xlabel("Frequency (ω)");
ylabel("|Z(ω)|");
title("Magnitude Spectrum of z(t)");

subplot(2, 1, 2);
plot(f_z, fftshift(angle(Zf))); % Phase spectrum
grid on;
xlabel("Frequency (ω)");
ylabel("Phase of Z(ω)");
title("Phase Spectrum of z(t)");
%% A6 (time shift on the signal in time domain is multiplying by a spiral in frequency domain)
%freq shift

N = 100; 
PulseWidth = 10;
t = 0:(N-1);
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];

f = [-(N/2):(N/2)-1] * (1/N); % Frequency vector (double-sided)
w0 = pi/3; % Define modulation frequencies

% Modulated signals
w_plus = x .* exp(1j * w0 * t);
w_minus = x .* exp(-1j * w0 * t);
w_cos = x .* cos(w0 * t);

% Fourier Transforms
W_plus_f = fft(w_plus);
W_minus_f = fft(w_minus);
W_cos_f = fft(w_cos);

% Extract magnitude and phase spectra
W_plus_mag = fftshift(abs(W_plus_f));
W_plus_phase = fftshift(angle(W_plus_f));

W_minus_mag = fftshift(abs(W_minus_f));
W_minus_phase = fftshift(angle(W_minus_f));

W_cos_mag = fftshift(abs(W_cos_f));
W_cos_phase = fftshift(angle(W_cos_f));

% Plot magnitude and phase for w_plus(t)
figure;
subplot(2, 1, 1);
plot(f, W_plus_mag);
grid on;
title('Magnitude of w_+(t)');
xlabel('Frequency (Hz)');
ylabel('|W_+(f)|');

subplot(2, 1, 2);
plot(f, W_plus_phase);
grid on;
title('Phase of w_+(t)');
xlabel('Frequency (Hz)');
ylabel('Phase of W_+(f) (radians)');

% Plot magnitude and phase for w_minus(t)
figure;
subplot(2, 1, 1);
plot(f, W_minus_mag);
grid on;
title('Magnitude of w_-(t)');
xlabel('Frequency (Hz)');
ylabel('|W_-(f)|');

subplot(2, 1, 2);
plot(f, W_minus_phase);
grid on;
title('Phase of w_-(t)');
xlabel('Frequency (Hz)');
ylabel('Phase of W_-(f) (radians)');

% Plot magnitude and phase for w_cos(t)
figure;
subplot(2, 1, 1);
plot(f, W_cos_mag);
grid on;
title('Magnitude of w_c(t)');
xlabel('Frequency (Hz)');
ylabel('|W_c(f)|');

subplot(2, 1, 2);
plot(f, W_cos_phase);
grid on;
title('Phase of w_c(t)');
xlabel('Frequency (Hz)');
ylabel('Phase of W_c(f) (radians)');
%% Part B

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
%% A4 

N = 100;
PulseWidth = 10;
t = 0:(N-1);
x = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
f = (-(N/2):1:(N/2)-1)*(1/N); % Frequency vector
Xf = fft(x); % Fourier Transform of x
Zf = Xf .* Xf; % Frequency Domain Multiplication
z_time = ifft(Zf); % Inverse Fourier Transform of Z(f) to get z(t)

% Plotting Time-Domain Convolution
figure;
plot(z_time);
grid on;
title('Time-Domain: Convolution of z(t) = x(t) * x(t)');
xlabel('Time');
ylabel('z(t)');

% Frequency-Domain Plots
figure;
subplot(2, 1, 1);
plot(f, fftshift(abs(Zf))); % Magnitude of Z(f)
grid on;
title('Frequency-Domain: Convolution of Z(f)');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
subplot(2, 1, 2);
plot(f, fftshift(angle(Zf))); % Phase of Z(f)
grid on;
title('Frequency-Domain: Phase Spectra of Z(f)');
xlabel('Frequency (\omega)');
ylabel('Phase');
%% A5

% Fourier Transform of pulses with different widths
N = 100; % Total length of the signal
t = 0:1:(N-1); % Time vector
f = (-(N/2):1:(N/2)-1)*(1/N); % Frequency vector
% For PulseWidth = 5
PulseWidth = 5;
x1 = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
Xf1 = fft(x1); % Fourier Transform of the pulse
figure;
subplot(2, 1, 1); plot(f, fftshift(abs(Xf1))); grid on;
title('Pulse Width = 5: Magnitude Spectrum');
xlabel('Frequency (\omega)');
ylabel('Magnitude');

subplot(2, 1, 2); plot(f, fftshift(angle(Xf1))); grid on;
title('Pulse Width = 5: Phase Spectrum');
xlabel('Frequency (\omega)');
ylabel('Phase');
% For PulseWidth = 25 (ratio in time domain)
PulseWidth = 25;
x2 = [ones(1, PulseWidth), zeros(1, N - PulseWidth)];
Xf2 = fft(x2); % Fourier Transform of the pulse
figure;
subplot(2, 1, 1); plot(f, fftshift(abs(Xf2))); grid on;
title('Pulse Width = 25: Magnitude Spectrum');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
subplot(2, 1, 2); plot(f, fftshift(angle(Xf2))); grid on;
title('Pulse Width = 25: Phase Spectrum');
xlabel('Frequency (\omega)');
ylabel('Phase');