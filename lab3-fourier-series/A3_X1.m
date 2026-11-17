% A.3 x1(t)
n = [-3,-1,1,3]; 
D_n = [1/2, 1/4, 1/2, 1/4];

subplot(1,2,1); 
stem(n,abs(D_n));
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n));
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');


