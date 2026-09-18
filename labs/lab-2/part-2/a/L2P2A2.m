%% Part 2 A.1:
inpFOlead = L2P2A1out.LeadComp(:,1);
outFOlead = L2P2A1out.LeadComp(:,2);
time = L2P2A1out.time;

figure();
hold on
plot(time, inpFOlead);
plot(time, outFOlead);
title("Plot of Input and Output to First-Order Lead Compensator");
xlabel('Time');
ylabel('Amplitude');
legend('Input', 'Output');
hold off


%% Part 2 A.2:
num = [1 1];
denom = [0.1 1];
sys = tf(num, denom);

figure()
bode(sys);
grid on
title("Bode Plot of First-Order Lead Compensator")