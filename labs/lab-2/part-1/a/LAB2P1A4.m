t = LAB2P1A4out.time;

VPmodel_sig = LAB2P1A4out.VPmodel;
VSmodel_sig = LAB2P1A4out.VSmodel;

figure

subplot(2,1,1)
plot(t, VPmodel_sig(:,1), t, VPmodel_sig(:,2), 'LineWidth', 1.5)
xlabel('Time (s)')
ylabel('Amplitude')
legend('Input','Output')
grid on

subplot(2,1,2)
plot(t, VSmodel_sig(:,1), t, VSmodel_sig(:,2), 'LineWidth', 1.5)
xlabel('Time (s)')
ylabel('Amplitude')
legend('Input','Output')
grid on