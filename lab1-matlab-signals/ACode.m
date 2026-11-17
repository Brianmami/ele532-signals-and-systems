%a1 
f = @(t) exp(-t).*cos(2*pi*t); % @ symbol identifies the expression as an anonymous function, which is assigned a name of f. Parentheses following the @ symbol are used to identify the function%s independent variables
t = (-2:0.01:2);
t1 = (-2:2)
figure
plot(t,f(t));
hold on
plot(t1, f(t1))
xlabel('t'); ylabel('f(t)'); grid;

%a2
f = @(t) exp(-t)
t = (-2:2);
figure
plot(t,f(t));

xlabel('t'); ylabel('f(t)'); grid;