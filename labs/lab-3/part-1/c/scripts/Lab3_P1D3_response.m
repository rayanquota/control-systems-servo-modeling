% Defining the transfer function coefficients based on tuned parameters
num = [52.8 113.94 64.34];
denom = [1 26.16 72.47 70.47 23.16 0]; 

Hs = 1;
opensys = tf(num, denom);
closedsys = feedback(opensys, Hs, -1);

figure();
stepplot(closedsys);
title("Step Response of Tuned PID Controller System");