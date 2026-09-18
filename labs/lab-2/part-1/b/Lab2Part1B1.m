% Lab 2 Part 1 B.1
DCmotorPIData = outP1B1.DCmotorPI;
DCMotorPIInput = DCmotorPIData(:, 1);
DCmotorPITF = DCmotorPIData(:, 2);
P1B1time = outP1B1.time;

figure();
hold on 
hold on
plot(P1B1time, DCMotorPIInput); 
plot(P1B1time, DCmotorPITF);      
xlabel('Time (s)');
ylabel('Amplitude');
title('Plot of Input and Step-Response for Voltage-to-Speed Transfer Function');
legend('Input', 'Step-Response');
hold off