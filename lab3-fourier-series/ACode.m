%% A3 x1
n = [-3,-1,1,3]; 
D_n = [1/2, 1/4, 1/2, 1/4];

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');
%% A3 x2
n = (-10:10); 
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);
%% A3 x3
n = (-10:10); 
D_n(n==0) = 0.25; 
D_n(n~=0) = sin(pi/4 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k'); %absolute value
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x3(t)')
ylim([0,0.5]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k'); %angle value 
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x3(t)')
ylim([-0,5]);
%% A4 x1
% a)
n = (-5:5); 
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');

%% b)
n = (-20:20); 
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');

%% c)
n = (-50:50); 
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');

%% d)
n = (-500:500); 
D_n = 0.5.*(abs(n) == 3) + 0.25.*(abs(n) == 1);

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n x1(t)')
ylim([0,1]);

subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n x1(t)');
%% A4 Part 2
%a)

n = (-5:5); 
D_n = zeros(size(n));
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);

%% b)
n = (-20:20); 
D_n = zeros(size(n));
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);

%% c)
n = (-50:50); 
D_n = zeros(size(n));
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);


%% d)
n = (-500:500); 
D_n = zeros(size(n));
D_n(n==0) = 0.5; 
D_n(n~=0) = sin(pi/2 .* n(n~=0))./(pi .* n(n~=0));

subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x2(t)')
ylim([0,0.75]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x2(t)')
ylim([0,5]);
%% A4 Part 3
%a)
n = (-5:5); 
D_n = zeros(size(n));
D_n(n==0) = 0.25; 
D_n(n~=0) = sin(pi/4 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x3(t)')
ylim([0,0.5]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x3(t)')
ylim([-0,5]);

%% b)
n = (-20:20); 
D_n = zeros(size(n));
D_n(n==0) = 0.25; 
D_n(n~=0) = sin(pi/4 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x3(t)')
ylim([0,0.5]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x3(t)')
ylim([-0,5]);

%% c)
n = (-50:50); 
D_n = zeros(size(n));
D_n(n==0) = 0.25; 
D_n(n~=0) = sin(pi/4 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x3(t)')
ylim([0,0.5]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x3(t)')
ylim([-0,5]);

%% d)
n = (-500:500); 
D_n = zeros(size(n));
D_n(n==0) = 0.25; 
D_n(n~=0) = sin(pi/4 .* n(n~=0))./(pi .* n(n~=0));


subplot(1,2,1); 
stem(n,abs(D_n),'.k');
xlabel('n'); 
ylabel('|D_n|');
title('Magnitude of D_n for x3(t)')
ylim([0,0.5]);


subplot(1,2,2); 
stem(n,angle(D_n),'.k');
xlabel('n'); 
ylabel('angle D_n (radians)');
title('Phase of D_n for x3(t)')
ylim([-0,5]);