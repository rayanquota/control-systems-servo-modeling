

%Plot A2
%Graph for Sine Wave
out = P1A2out;
t = out.tout;   
data = out.simout;
figure;
subplot(3,1,1);
plot(t, data(:,1));
title('Simulink Sine Graph 1 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
subplot(3,1,2);
plot(t, data(:,2));
title('Simulink Sine Graph 2 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
subplot(3,1,3);
plot(t, data(:,3));
title('Simulink Sine Graph 3 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
grid on;
%Graph for Pulse   
data_pulse = out.simout1;
figure;
subplot(3,1,1);
plot(t, data_pulse(:,1));
title('Simulink Pulse Graph 1 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
subplot(3,1,2);
plot(t, data_pulse(:,2));
title('Simulink Pulse Graph 2 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
subplot(3,1,3);
plot(t, data_pulse(:,3));
title('Simulink Pulse Graph 3 - Part A');
xlabel('Time (Seconds)');
ylabel('Amplitude');
