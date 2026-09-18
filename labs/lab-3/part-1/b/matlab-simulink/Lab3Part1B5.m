%% B.5
clc;
clear;
close all;

Kp = 4;

% PD controller for Td = 1
Td1 = 1;
C1 = Kp * (1 + tf([Td1 0],[Td1/10 1]));

% PD controller for Td = 2
Td2 = 2;
C2 = Kp * (1 + tf([Td2 0],[Td2/10 1]));

% PD controller for Td = 0.1
Td3 = 0.1;
C3 = Kp * (1 + tf([Td3 0],[Td3/10 1]));

% Bode plot
figure;
bode(C1, C2, C3);
grid on;
legend('T_d = 1', 'T_d = 2', 'T_d = 0.1', 'Location', 'best');
title('Bode Plot of PD Controllers for Different T_d Values');