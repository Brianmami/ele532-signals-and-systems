t = 0:0.0005:0.1;
u = @(t) 1.0 * (t >= 0);

c1 = 1 ./ (lambda(2) - lambda(1))
c2 = -1 .* c1

h = @(t) (c1 .* exp(lambda(1) .* t) + c2 .* exp(lambda(2) .* t)) .* (u(t));

plot(t, h(t)); 
title('A.2. h(t)')


