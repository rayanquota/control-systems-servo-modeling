%% Part 1 C.2:
time = out.time(:, 1);
outPID = out.TOPID(:, 2);
figure();
plot(time, outPID);
title("Plot of PID Controller System Response vs Time");
xlabel("Time");
ylabel("Amplitude");