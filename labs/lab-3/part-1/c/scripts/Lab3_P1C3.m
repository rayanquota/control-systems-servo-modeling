%% Part 1 C.3:
num = [44 41 10];
den = [1 13 33 31 10 0];
Gs = tf(num, den);
Hs = 1;
sys = feedback(Gs, Hs, -1);

figure;
stepplot(sys);
title("Step Response of PID Controller");