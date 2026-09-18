%Part C4 - Plot
%% Part 1 C.4: Plotting u(t) for Open vs Closed Loop
clc; close all;
% 1. Extract Data (Robust check for 'time' vs 'tout')
% Extract Open Loop Data
if isfield(out_open, 'tout')
t_open = out_open.tout;
else
t_open = out_open.time;
end
u1 = out_open.u1; % Control signal
% Extract Closed Loop Data
if isfield(out_closed, 'tout')
t_closed = out_closed.tout;
else
t_closed = out_closed.time;
end
u2 = out_closed.u2; % Control signal
%Generate the Comparison Plot
figure;
sgtitle('Part C.4: Control Signal u(t) Comparison');
% Subplot 1: Open Loop
subplot(2,1,1);
plot(t_open, u1, 'LineWidth', 1.5, 'Color', 'b');
title('Open Loop Control Signal u(t)');
xlabel('Time (s)');
ylabel('u(t) Amplitude');
grid on;
%Closed Loop
subplot(2,1,2);
plot(t_closed, u2, 'LineWidth', 1.5, 'Color', 'r');
title('Closed Loop Control Signal u(t)');
xlabel('Time (s)');
ylabel('u(t) Amplitude');
grid on;
