%% C1
t = -1:0.001:5;
% Functions
u = @(t) 1.0.* (t>=0);
h1 = @(t) exp(t/5).*u(t);
h2 = @(t) 4*exp(-t/5).*u(t);
h3 = @(t) 4*exp(-t).*u(t);
h4 = @(t) 4*(exp(-t/5) - exp(-t)).*u(t);

%Plot
plot(t,h1(t));
hold on;
plot(t,h2(t));
plot(t,h3(t));
plot(t,h4(t));
xlabel("t");
ylabel("h(t)");
title("C.1");
grid;
legend('S1 = h1(t)', 'S2 = h2(t)', 'S3 = h3(t)', 'S4 = h4(t)');
hold off;
%% C2

% S1: 1/5
% S2: -1/5
% S3: -1
% S4: -1/5, -1
 %just the values that are taken to the power of e in the previous section
 %% C3 H1
u = @(t) 1.0 .* (t >= 0);
x = @(t) sin(5 .* t) .* (u(t) - u(t - 3));
h = @(t) exp(t / 5) .* (u(t) - u(t - 20));

dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));

%Mfile
for t = tvec,
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1),plot(tau,h(tau),"k-",tau,x(t-tau),"k--",t,0,"ok");
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],"edgecolor","none");
    xlabel("\tau"); title("h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]");
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,"k",tvec(ti),y(ti),"ok");
    xlabel("t"); ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end

%% C3H2
u = @(t) 1.0 .*(t >= 0);
x = @(t) sin(5 .* t) .* (u(t) - u(t - 3));
h = @(t) 4 .* (exp(-t / 5)) .* (u(t) - u(t - 20));

dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));

for t = tvec,
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1),plot(tau,h(tau),"k-",tau,x(t-tau),"k--",t,0,"ok");
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],"edgecolor","none");
    xlabel("\tau"); title("h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]");
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,"k",tvec(ti),y(ti),"ok");
    xlabel("t"); ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end
%% C3 H3
u = @(t) 1.0 .* (t >= 0);
x = @(t) sin(5 .* t) .* (u(t) - u(t - 3));
h = @(t) 4 .* (exp(-t)) .* (u(t) - u(t - 20));

dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));

for t = tvec,
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1),plot(tau,h(tau),"k-",tau,x(t-tau),"k--",t,0,"ok");
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],"edgecolor","none");
    xlabel("\tau"); title("h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]");
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,"k",tvec(ti),y(ti),"ok");
    xlabel("t"); ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end
%% C3 H4

u = @(t) 1.0 .* (t >= 0);
x = @(t) sin(5 .* t) .* (u(t) - u(t - 3));
h = @(t) 4 .* (exp(-t / 5) - exp(-t)) .* (u(t) - u(t - 20));

dtau = 0.005;
tau = 0:dtau:20;
ti = 0;
tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec));

for t = tvec,
    ti = ti+1;
    xh = x(t-tau).*h(tau);
    lxh = length(xh);
    y(ti) = sum(xh.*dtau);
    subplot(2,1,1),plot(tau,h(tau),"k-",tau,x(t-tau),"k--",t,0,"ok");
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
        [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
        [.8 .8 .8],"edgecolor","none");
    xlabel("\tau"); title("h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]");
    c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,"k",tvec(ti),y(ti),"ok");
    xlabel("t"); ylabel("y(t) = \int h(\tau)x(t-\tau) d\tau");
    axis([tau(1) tau(end) -1.0 2.0]); grid;
    drawnow;
end