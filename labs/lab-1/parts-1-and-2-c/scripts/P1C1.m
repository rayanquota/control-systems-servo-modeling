out_func = out.FOLstep(:,2);
in_func = out.FOLstep(:,1);
%G(s) = Y(s)/R(s) = 1/0.1s+1
tau = 0.1;
K = 1;
% Calculate steady-state error for a step input
ess_1 = abs(abs(in_func(end))-abs(out_func(end)));
ess_1_perc = 100*ess_1/in_func(end);
% Display the steady-state error
fprintf('Steady State Error: %.8f\n', ess_1);
fprintf('Steady State Error Percentage: %.5f percent\n', ess_1_perc);