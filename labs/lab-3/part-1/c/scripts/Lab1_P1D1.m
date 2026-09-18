%% Part 1 D.1:
outPID = out.TOMS(:,2); % Extract amplitude data from simulation
time = out.time(:,1);   % Extract time data

figure();
plot(time, outPID);
xlabel("Time");
ylabel("Amplitude");
title("Plot of Third Order System at Marginal Stability Gain Ku=8");