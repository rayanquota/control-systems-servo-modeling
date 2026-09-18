%% Part 1 C.4:
% PID Controller
num = [44 41 10];
den = [1 10 0];
Gs = tf(num, den);
Hs = 1;
sys = feedback(Gs, Hs, -1);

% PI Controller
num1 = [4 1];
den1 = [1 0];
Gs1 = tf(num1, den1);
sys1 = feedback(Gs1, Hs, -1);

% PD Controller
num2 = [44 40];
den2 = [1 10];
Gs2 = tf(num2, den2);
sys2 = feedback(Gs2, Hs, -1);

figure();
hold on
bode(sys);
bode(sys1);
bode(sys2);
title("Bode Diagram for PID, PI, and PD Controllers");
legend("PID Controller", "PI Controller", "PD Controller");
hold off