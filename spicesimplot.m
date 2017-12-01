figure;
hold on;

plot(sim.dr, sim.v_in);
plot(sim.dr, sim.v_pid);
plot(sim.dr, sim.m_left);
plot(sim.dr, sim.m_right);

legend('v_{in}', 'v_{pid}', 'm_{left}', 'm_{right}');
xlabel('\Delta R (\Omega)');
ylabel('Voltage (V)');
title('Voltage Response');
grid on;
hold off;
