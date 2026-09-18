%% Part 1 C.1:
in_dcmotor = out.DCmotorPI(:, 1);
out_dcmotor = out.DCmotorPI(:, 2);
t = out.time(:, 1);

figure();
hold on
plot(t, in_dcmotor);
plot(t, out_dcmotor);
title("Plot of Input and Output for Voltage-to-Position Transfer Function");
xlabel('Time');
ylabel('Amplitude');
legend('Input', 'Output');
hold off