%% Part C5: Sensitivity Analysis Plots
clc; close all;

% --- DATA EXTRACTION ---

% SYSTEM 1: 1/(s+0.5)
% Open Loop (P1C1out -> FOLstep2)
t_A1 = P1C1out.tout;
in_A1 = P1C1out.FOLstep2(:,1);  % Input
out_A1 = P1C1out.FOLstep2(:,2); % Output

% Closed Loop (P1C2out -> FOLstep3)
t_B1 = P1C2out.tout;
in_B1 = P1C2out.FOLstep3(:,1);
out_B1 = P1C2out.FOLstep3(:,2);

% SYSTEM 2: 0.5/(s+1)
% Open Loop (P1C3out -> FOLstep4)
t_A2 = P1C3out.tout;
in_A2 = P1C3out.FOLstep4(:,1);
out_A2 = P1C3out.FOLstep4(:,2);

% Closed Loop (P1C4out -> FOLstep5)
t_B2 = P1C4out.tout;
in_B2 = P1C4out.FOLstep5(:,1);
out_B2 = P1C4out.FOLstep5(:,2);


% --- PLOTTING FIGURE 1 ---
figure('Color', 'w'); % Force white background for report style
sgtitle('Part C5 - System: 1/(s+0.5)');

% Subplot 1: Open Loop
subplot(2,1,1);
plot(t_A1, in_A1, 'k--'); hold on; % Input (Dashed)
plot(t_A1, out_A1, 'b');           % Output (Solid Blue)
title('Part C1 (Open Loop)');
xlabel('time (s)');
ylabel('Amplitude');
legend('Input', 'Output', 'Location', 'best');

% Subplot 2: Closed Loop
subplot(2,1,2);
plot(t_B1, in_B1, 'k--'); hold on; % Input
plot(t_B1, out_B1, 'r');           % Output (Solid Red)
title('Part C2 (Closed Loop)');
xlabel('time (s)');
ylabel('Amplitude');
legend('Input', 'Output', 'Location', 'best');
grid on;


% --- PLOTTING FIGURE 2 ---
figure('Color', 'w'); % Force white background
sgtitle('Part C5 - System: 0.5/(s+1)');

% Subplot 1: Open Loop
subplot(2,1,1);
plot(t_A2, in_A2, 'k--'); hold on;
plot(t_A2, out_A2, 'b');
title('Part C1 (Open Loop)');
xlabel('time (s)');
ylabel('Amplitude');
legend('Input', 'Output', 'Location', 'best');

% Subplot 2: Closed Loop
subplot(2,1,2);
plot(t_B2, in_B2, 'k--'); hold on;
plot(t_B2, out_B2, 'r');
title('Part C2 (Closed Loop)');
xlabel('time (s)');
ylabel('Amplitude');
legend('Input', 'Output', 'Location', 'best');
grid on;


% --- STEADY STATE ERROR CALCULATIONS ---
ess_A1 = abs(abs(in_A1(end)) - abs(out_A1(end)));
ess_B1 = abs(abs(in_B1(end)) - abs(out_B1(end)));
ess_A2 = abs(abs(in_A2(end)) - abs(out_A2(end)));
ess_B2 = abs(abs(in_B2(end)) - abs(out_B2(end)));

fprintf('1/s+0.5 Results:\n');
fprintf('Open Loop Ess:   %.4f\n', ess_A1);
fprintf('Closed Loop Ess: %.4f\n', ess_B1);
fprintf('\n0.5/s+1 Results:\n');
fprintf('Open Loop Ess:   %.4f\n', ess_A2);
fprintf('Closed Loop Ess: %.4f\n', ess_B2);