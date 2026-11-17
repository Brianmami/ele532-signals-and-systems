%x1
function x = A6AX1 (N)
t = -300:1:300;
x = 0;


for n = -N:N % n values 
    if (n == -3 || n == 3)
        D_n = 0.5;
    elseif (n == -1 || n == 1)
        D_n = 0.25;
    else D_n = 0;
    end;
    x = x + (D_n*exp(1j*n*(pi/10)*t)); 

end;

figure
plot(t,x);
grid;
title('Reconstructed time-domain signal of x(1)')
xlabel('t'); ylabel('x1(t)')
axis([-300 300 -2 2])
end