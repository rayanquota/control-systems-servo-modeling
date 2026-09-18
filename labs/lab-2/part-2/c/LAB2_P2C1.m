%% Part 2 C.1:
inpFOlag = out.FOlag(:,1);
outFOlag = out.FOlag(:,2);
time = out.time(:,1);
figure();
hold on
plot(time, inpFOlag);
plot(time, outFOlag);
title("Plot of Input and Output to First-Order Lag Compensator");
xlabel('Time');
ylabel('Amplitude');
legend('Input', 'Output');
hold off