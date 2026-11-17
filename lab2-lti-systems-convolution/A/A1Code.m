%% A.1

R = [1e4, 1e4, 1e4]; %setting resistor values
C = [1e-6, 1e-6]; %setting capacitor values

A1 = [1, (1/R(1)+1/R(2)+1/R(3))/C(2), 1/(R(1)*R(2)*C(1)*C(2))]; % Characteristic Equation

lambda = roots(A1) % roots

poly(lambda) % c1, c2, c3 /returns the coefficients of the polynomial whose roots are the elements of r 