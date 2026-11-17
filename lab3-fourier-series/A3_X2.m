% A.3 x2(t)
n = (-50:50); 
D_n = zeros(size(n)); 
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n));
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n));
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);



