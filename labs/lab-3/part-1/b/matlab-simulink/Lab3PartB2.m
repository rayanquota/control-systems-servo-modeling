%% Lab 3 - Part B.2

out = sim('Lab3_PartB2');

t = out.tout;

u = out.TOPD(:,1);   % input
y = out.TOPD(:,2);   % output

figure
plot(t, u, 'LineWidth', 1.5)
hold on
plot(t, y, 'LineWidth', 1.5, 'LineStyle', '--')

xlabel('Time (s)')
ylabel('Response')
title('PD-Controlled System Response')

legend('Input (Square Wave)', 'Output', 'Location', 'best')
grid on
hold off

