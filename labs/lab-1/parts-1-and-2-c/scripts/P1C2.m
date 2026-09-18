%Part C2
out_func2 = out.FOLstep1(:,2);
in_func2 = out.FOLstep1(:,1);
%G(s) = Y(s)/R(s) = 1/(1/11)s+1
tau = 1/11;
K = 1;
% Calculate steady-state error for a step input
ess_2 = abs(abs(in_func2(end))-abs(out_func2(end)));
ess_2_perc = 100*ess_2/in_func2(end);
% Display the steady-state error
fprintf('Steady State Error: %.8f\n', ess_2);
fprintf('Steady State Error Percentage: %.5f percent\n', ess_2_perc);
%%
