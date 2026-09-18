%%----PART 2)C.4----%%
clc; clear; close all;
% Define the transfer function of the open-loop system
s = tf('s');
G = 1 / ((s + 1) * (s + 1) * (s + 1));
% Critical gain (kcrt) found using Routh-Hurwitz criterion
kcrt = 9; % Example value, replace with actual calculated kcrt
% Closed-loop transfer function
sys_kcrt = (kcrt * G) / (1 + kcrt * G);
% Time vector
t = 0:0.1:150;
% Square wave input signal
u = square(2 * pi * 0.01 * t); 
% Simulate system response
[y, t_out] = lsim(sys_kcrt, u, t);
% Plot input and output
figure;
plot(t, u, 'r', 'LineWidth', 1.5); hold on;
plot(t_out, y, 'b', 'LineWidth', 1.5);
xlabel('Time (s)');
ylabel('Amplitude');
title(['System Response for k = k_{crt} (', num2str(kcrt), ')']);
legend('Reference Input (Square Wave)', 'System Output');
grid on;


