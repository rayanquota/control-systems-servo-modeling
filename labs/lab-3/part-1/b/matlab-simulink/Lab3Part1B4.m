%% B.4 
clc;
clear;
close all;

% Third-order plant
G = tf(1,[1 3 3 1]);

% Controller gain
Kp = 4;

% ---- PD controller for Td = 2 ----
Td_1 = 2;
C1 = Kp * (1 + tf([Td_1 0],[Td_1/10 1]));
T1 = feedback(C1*G,1);

figure;
stepplot(T1);
grid on;
title('Step Response with PD Controller, T_d = 2');
xlabel('Time (s)');
ylabel('Amplitude');

info1 = stepinfo(T1);
ess1 = abs(1 - dcgain(T1));

fprintf('\n--- PD Controller: Td = 2, Kp = 4 ---\n');
fprintf('Rise Time: %.4f s\n', info1.RiseTime);
fprintf('Overshoot: %.2f %%\n', info1.Overshoot);
fprintf('Settling Time: %.4f s\n', info1.SettlingTime);
fprintf('Steady-State Error: %.4f\n', ess1);

% ---- PD controller for Td = 0.1 ----
Td_2 = 0.1;
C2 = Kp * (1 + tf([Td_2 0],[Td_2/10 1]));
T2 = feedback(C2*G,1);

figure;
stepplot(T2);
grid on;
title('Step Response with PD Controller, T_d = 0.1');
xlabel('Time (s)');
ylabel('Amplitude');

info2 = stepinfo(T2);
ess2 = abs(1 - dcgain(T2));

fprintf('\n--- PD Controller: Td = 0.1, Kp = 4 ---\n');
fprintf('Rise Time: %.4f s\n', info2.RiseTime);
fprintf('Overshoot: %.2f %%\n', info2.Overshoot);
fprintf('Settling Time: %.4f s\n', info2.SettlingTime);
fprintf('Steady-State Error: %.4f\n', ess2);

% ---- Comparison plot with B.3 case Td = 1 ----
Td_3 = 1;
C3 = Kp * (1 + tf([Td_3 0],[Td_3/10 1]));
T3 = feedback(C3*G,1);

figure;
stepplot(T1,T2,T3);
grid on;
legend('T_d = 2','T_d = 0.1','T_d = 1','Location','best');
title('Comparison of Step Responses for Different T_d Values');
xlabel('Time (s)');
ylabel('Amplitude');