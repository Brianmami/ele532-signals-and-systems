%% A5

%x1(t) (Put x = A5AX1(#) into command window)

function x = A5AX1 (N)
t = -300:1:300;
x = 0;


for n = -N:N
    if (n == -3 || n == 3)
        D_n = 0.5;
    elseif (n == -1 || n == 1)
        D_n = 0.25;
    else D_n = 0;
    end;
    x = x + (D_n*exp(1j*n*(pi/10)*t));
end;
