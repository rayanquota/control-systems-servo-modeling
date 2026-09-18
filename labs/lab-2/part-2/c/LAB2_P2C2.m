%% Part 2 C.2: First-Order Lag Compensator Analysis
% Define the numerator and denominator coefficients
% Transfer Function: (s + 3) / (s + 0.3)
num = [1 3];       % Represents s + 3
denom = [1 0.3];   % Represents s + 0.3

% Create the transfer function object
sys = tf(num, denom);

% Generate the Bode Plot
figure();
hold on
bode(sys);
grid on
title("Bode Plot of First-Order Lag Compensator");
hold off
