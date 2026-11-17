function x = A6AX2 (N)
t = -300:1:300;
D = @(n) sin(n * (pi/2)) ./ n*pi; %defines the fourier series coeffiecent

D0 = 0; %dc constant

x = D0 * ones(size(t));
w0 = pi/10; %Omega


for n = 1:N
    if (n == 0)
        D = 0.5;
   
    else 
    end;
    x = x + real(D(n) * exp(1j * w0 * n * t) + D(-n) * exp(-1j * w0 * n * t));
end;

figure
plot(t,x);
grid;
title('Reconstructed time-domain signal of x(2)')
xlabel('t'); ylabel('x1(t)')
axis([-300 300 -6 6])
end