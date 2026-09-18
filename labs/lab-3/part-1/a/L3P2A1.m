%% Part Two 

%% A1
Lp = 0.2;
Mp = 0.0970;
Jp = 3.2341e-4;
Bp = 0.0024;
Lr = 0.216;
lr = 0.0619;
Br = 0.1135;
Jr = 9.98e-4;
g  = 9.81;

Jt = Jp*Mp*Lr^2+Jr*Jp+0.25*Jr*Mp*Lp^2;

A = [ 0, 0, 1, 0;
      0, 0, 0, 1;
      0, (Mp^2*Lp^2*Lr*g)/(4*Jt), (-Br*(Jp+Mp*(Lp/2)^2))/Jt, (-Mp*(Lp/2)*Lr*Bp)/Jt;
      0, Mp*g*(Lp/2)*(Jr+Mp*Lr^2)/Jt, -Mp*(Lp/2)*Lr*Br/Jt, -Bp*(Jr+Mp*Lr^2)/Jt];

B = [0;
     0;
     (Jp+Mp*(Lp/2)^2)/Jt;
     Mp*(Lp/2)*Lr/Jt];

C = [1, 0, 0, 0;
     0, 1, 0, 0];

D = [0;
     0];
       
%% Display
disp ('Jt = ')
disp (Jt)

disp ('A = ');
disp (A);
disp ('B = ');
disp (B);
disp ('C = ');
disp (C);
disp ('D = ');
disp (D);

%% Poly

poly (A);
eig(A)


%% Test

num = [30 300];
denom = [1 3 50];
sys = tf (num,denom)

bode (sys)
grid on
margin(sys)