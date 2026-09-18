% Lab 2 Part 2 D1
inputSOlag = out.SOlag(:,1);
outputSOlag = out.SOlag(:,2);
time = out.time(:,1);

figure();
hold on
plot(time, inputSOlag);
plot(time, outputSOlag);
title("Input/Output Plot to Lag Compensator")
xlabel("Time (s)");
ylabel("Amplitude");
legend("Input", "Output");
hold off

% Lab 2 Part 2 D2
numerator = [50 150];
denominator = [1 10.3 78 157.5];

lag_system = tf(numerator, denominator);

figure();
stepplot(lag_system);
title("Step Response of the Lag Compensator")


% Part 2 D.3

% Gain K = 2
numerator = 50;
denominator = [1 10 75];

system_tf = tf(numerator, denominator);

figure();
stepplot(system_tf);
title("Step Response of (K = 2) System");

% Gain K = 20
numerator = 500;
denominator = [1 10 525];

system_tf = tf(numerator, denominator);

figure();
stepplot(system_tf);
title("Step Response of (K = 20) System");

% Lab 2 Part 2 D.4 
% Lag Compensator Bode Plot

numerator = [50 150];
denominator = [1 10.3 78 157.5];

lag_system = tf(numerator, denominator);

figure();
margin(lag_system);   % shows bode plot with gain and phase margins
grid on;
title("Bode Plot of Lag Compensator System with Gain and Phase Margins");

% Bode Plot of System Without Lag Compensator (K = 2)

num_basic = 50;
den_basic = [1 10 75];

basic_system = tf(num_basic, den_basic);

figure();
margin(basic_system);
grid on;
title("Bode Plot of System Without Lag Compensator (K = 2) with Gain and Phase Margins");