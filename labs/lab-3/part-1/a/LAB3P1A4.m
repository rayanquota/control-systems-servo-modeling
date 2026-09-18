%% Part 1 A.4

% Ti = 2
outP1A4a = sim("L3P1A4a");

TOPI2Data = outP1A4a.TOPI2;
TOPI2Input = TOPI2Data(:, 1);
TOPI2TF = TOPI2Data(:, 2);

P1A4atime = outP1A4a.time;

figure;
hold on
plot(P1A4atime, TOPI2Input);
plot(P1A4atime, TOPI2TF);
title("Plot of Input and Step Response of PI Controller, Ti = 2");
xlabel("time (s)");
ylabel("Amplitude");
legend("Input", "Step Response");
hold off

% Ti = 8
outP1A4b = sim("L3P1A4b");

TOPI8Data = outP1A4b.TOPI8;
TOPI8Input = TOPI8Data(:, 1);
TOPI8TF = TOPI8Data(:, 2);

P1A4btime = outP1A4b.time;

figure;
hold on
plot(P1A4btime, TOPI8Input);
plot(P1A4btime, TOPI8TF);
title("Plot of Input and Step Response of PI Controller, Ti = 8");
xlabel("time (s)");
ylabel("Amplitude");
legend("Input", "Step Response");
hold off

numPI2 = [2 1];
denPI2 = [1 3 3 1 0];
GolPI2 = tf(numPI2, denPI2);
GclPI2 = feedback(GolPI2, 1);
figure;
stepplot(GclPI2);
grid on;
title("Step Response of PI Controller Ti = 2")

stepinfo(GclPI2)

numPI8 = [8 1];
denPI8 = [4 12 12 4 0];
GolPI8 = tf(numPI8, denPI8);
GclPI8 = feedback(GolPI8, 1);
figure;
stepplot(GclPI8);
grid on;
title("Step Response of PI Controller Ti = 8")

stepinfo(GclPI8)
%% Part 1 A.5

numPIbode2 = [4 2];
denPIbode2 = [2 0];
PIC2 = tf(numPIbode2, denPIbode2);

numPIbode4 = [8 2];
denPIbode4 = [4 0];
PIC4 = tf(numPIbode4, denPIbode4);

numPIbode8 = [16 2];
denPIbode8 = [8 0];
PIC8 = tf(numPIbode8, denPIbode8);

figure;
hold on
bode(PIC2);
bode(PIC4);
bode(PIC8);
title("Bode Plots of PI Controllers at Varying Ti")
legend("Ti = 2", "Ti = 4", "Ti = 8");
hold off