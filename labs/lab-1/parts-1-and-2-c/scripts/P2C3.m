%%----PART 2)C.3----%%
clc; clear; close all;
% Define system parameters
s = tf('s');
% Define the open-loop system G(s) = 1 / (s+1)^3
G = 1 / ((s+1)*(s+1)*(s+1));
% Define proportional gains
K_values = [2, 5, 10];
% Loop over each K value
for K = K_values
   % Closed-loop transfer function: T(s) = KG(s) / (1 + KG(s))
   sys = (K * G) / (1 + K * G);
  
   % Get step response info
   info = stepinfo(sys);
  
   % Compute steady-state error (Final Value Theorem)
   ess = 1 - dcgain(sys);  % ess = |1 - T(∞)|
  
   % Display results
   fprintf('\nFor K = %d:\n', K);
   fprintf('Rise Time (tr): %.4f seconds\n', info.RiseTime);
   fprintf('Max Overshoot (%%O.S.): %.2f%%\n', info.Overshoot);
   fprintf('Settling Time (ts): %.4f seconds\n', info.SettlingTime);
   fprintf('Steady-State Error (ess): %.4f\n', ess);
  
   % Plot step response
   figure;
   stepplot(sys);
   title(sprintf('Step Response for K = %d', K));
   grid on;
end
