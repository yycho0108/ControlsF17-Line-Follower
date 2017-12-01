function [t,x,theta] = simulate()
global d v_r ctrl
d = 0.1;
v_r = 0.6;
ctrl = PIDCtrl(-70.5, -279, -7.92);
y0 = [0 0]';
opts = odeset('Stats','on', 'RelTol', 1e-2);

[t,y] = ode45(@delta,[0 0.3],y0, opts);
x = y(:,1);
theta = y(:,2);

subplot(1,2,1);
plot(t,x);
subplot(1,2,2);
plot(t,theta);
end

function res = delta(t,y)
global d v_r ctrl
x = y(1);
theta = y(2);
v_l = ctrl.control(t,x);

v = (v_l+v_r)/2.0;
w = (v_r-v_l)/d;
dx = v * sin(theta);
res = [dx w]';

end