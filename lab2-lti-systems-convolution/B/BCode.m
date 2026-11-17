%% B1
% CH2MP4.m : Chapter 2, MATLAB Program 4
% Script M-file graphically demonstrates the convolution process.
figure(1) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1));
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5);

dtau = 0.005; tau = -1:dtau:4;
ti = 0; tvec = -0.25:0.1:2.25; %change this to move your convolution for part 1
y = NaN*zeros(1,length(tvec)); 

for t = tvec,
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); 
    lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
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
    pause;
end
%% B2

figure(1) 
u = @(t) 1.0 * (t>= 0);
x = @(t) u(t) - u(t - 2);
h = @(t) (t + 1) .* (u(t + 1) - u(t));

dtau = 0.005; tau = -1:dtau:10.5;
ti = 0; tvec = -1:0.1:3; %change this to move your convolution for part 2
y = NaN*zeros(1,length(tvec)); 

for t = tvec,
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); 
    lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
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
    pause;
end

%% B3a
figure(1) 
A = 1.0;
B = 2.0;

u = @(t) 1.0 * (t >= 0);
x = @(t) A * (u(t - 4) - u(t - 6));
h = @(t) B * (u(t + 5) - u(t + 4));

dtau = 0.005; tau = -6:dtau:2.5;
ti = 0; tvec = -5:0.1:5;
y = NaN*zeros(1,length(tvec)); 

for t = tvec,
    ti = ti+1; % Time index
    xh = x(t-tau).*h(tau); 
    lxh = length(xh);
    y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
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
    pause;
end

%% B3b

figure(1) 
A = 1.0;
B = 2.0;
u = @(t) 1.0 * (t >= 0);
x = @(t) A * (u(t - 3) - u(t - 5));
h = @(t) B * (u(t + 5) - u(t + 3));

dtau = 0.005; tau = -6:dtau:2.5;
ti = 0; tvec = -5:0.1:5;
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
    pause;
end
%% B3h


figure(1) 
A = 1.0;
B = 2.0;
u = @(t) 1.0 * (t >= 0);
x = @(t) exp(t) .* (u(t + 2) - u(t));
h = @(t) exp(-2 * t) .* (u(t) - u(t - 1));

dtau = 0.005; tau = -6:dtau:2.5;
ti = 0; tvec = -5:0.1:5;
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
    pause;
end
figure;
