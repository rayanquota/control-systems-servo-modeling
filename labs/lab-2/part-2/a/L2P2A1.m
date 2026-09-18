inpLead = L2P2A1out.LeadComp(:,1);
outLead = L2P2A1out.LeadComp(:,2);
time = L2P2A1out.time;

figure
hold on
plot(time, inpLead)
plot(time, outLead)
title('Plot of Input and Output to First-Order Lead Compensator')
xlabel('Time')
ylabel('Amplitude')
legend('Input','Output')
hold off
