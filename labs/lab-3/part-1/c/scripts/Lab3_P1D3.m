%% Part 1 D.3:
outPID = out.TOPIDZN(:, 2); % Data from the Tuned PID simulation
time = out.time(:, 1);

figure;
plot(time, outPID);
title("Plot of Output of Tuned PID Controller System vs Time");
xlabel("Time");
ylabel("Amplitude");