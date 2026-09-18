% Lab 2 Part 2 B.2
SOLeadData = outP2B1.SOLead;
SOLeadInput = SOLeadData(:, 1);
SOLeadTF = SOLeadData(:, 2);

P2B1time = outP2B1.time;

% Plot 
figure; 
hold on 
plot(P2B1time, SOLeadInput);
plot(P2B1time, SOLeadTF);
title("Plot of Input and Step Response of SO System with Lead Compensator")
xlabel("time (s)");
ylabel("Amplitude");
legend('Input', 'Step Response');
hold off;

% P2B2
num2 = 100;
den2 = [1 11 110];
Gc12 = tf(num2, den2);

figure;
stepplot(Gc12);
grid on;
title('Step Response of Closed-Loop System');