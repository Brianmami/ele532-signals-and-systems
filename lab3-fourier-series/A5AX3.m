%% A5

%x3(t) (Put x = A5AX3(#) into command window)

function x = A5AX3 (N)
t = -300:1:300;
D = @(n) sin(n * (pi/4)) ./ n*pi;

D0 = 0;

x = D0 * ones(size(t));
w0 = pi/20;


for n = 1:N
    if (n == 0)
        D = 0.5;
   
    else 
    end;
    x = x + real(D(n) * exp(1j * w0 * n * t) + D(-n) * exp(-1j * w0 * n * t));
end;
