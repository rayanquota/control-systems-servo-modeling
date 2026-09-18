% Lab 3 - Part A
input = out.TOPI(:,1);
output = out.TOPI(:,2);
time = out.tout;
%Plotting
figure;
hold on;
plot(time, input, "DisplayName", 'Input Function');
plot(time, output, "DisplayName", "Output Function");
hold off;
title('Plot A2');
xlabel('Time (seconds)');
ylabel('Amplitude');
legend;
grid on;


%% Part 1 A.3

numPI = [4 1];
denPI = [2 6 6 2 0];
GolPI = tf(numPI, denPI);
GclPI = feedback(GolPI, 1)
figure;
stepplot(GclPI);
grid on;
title("Step Response of PI Controller")

stepinfo(GclPI)

numP = 2;
denP = [1 3 3 1];
GolP = tf(numP, denP);
GclP = feedback(GolP, 1)
figure;
stepplot(GclP);
grid on;
title("Step Response of P Controller")

stepinfo(GclP)