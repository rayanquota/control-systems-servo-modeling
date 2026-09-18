%% BME 639 - Lab 3 Part 2 B.1
clc;
clear;
close all;

%% System parameters
Lp = 0.2;
Mp = 0.097;
Jp = 3.2341e-4;
Bp = 0.0024;
Lr = 0.216;
lr = 0.0619;
Br = 0.1135;
Jr = 9.98e-4;
g  = 9.81;

%% Total inertia term
Jt = Jp*Mp*Lr^2 + Jr*Jp + (1/4)*Jr*Mp*Lp^2;

%% State-space matrices from Part 2 A.1
A = [0 0 1 0;
     0 0 0 1;
     0 Mp^2*(Lp/2)^2*Lr*g/Jt, -Br*(Jp + Mp*(Lp/2)^2)/Jt, -Mp*(Lp/2)*Lr*Bp/Jt;
     0 Mp*g*(Lp/2)*(Jr + Mp*Lr^2)/Jt, -Mp*(Lp/2)*Lr*Br/Jt, -Bp*(Jr + Mp*Lr^2)/Jt];

B = [0;
     0;
     (Jp + Mp*(Lp/2)^2)/Jt;
     Mp*(Lp/2)*Lr/Jt];

C = [1 0 0 0;
     0 1 0 0];

D = [0;
     0];

%% Step 1: Check controllability
Qc = ctrb(A,B);

disp('Controllability matrix:');
disp(Qc);

disp('Rank of controllability matrix:');
disp(rank(Qc));

%% Step 2: Choose desired closed-loop poles
zeta = 0.7;
wn = 4;

p1 = -zeta*wn + 1i*wn*sqrt(1 - zeta^2);
p2 = -zeta*wn - 1i*wn*sqrt(1 - zeta^2);
p3 = -30;
p4 = -40;

disp('Selected dominant poles:');
disp(p1);
disp(p2);

desired_poles = [p1 p2 p3 p4];
desired_poly = poly(desired_poles);

disp('Desired closed-loop characteristic equation:');
disp(desired_poly);

%% Step 3: Find state feedback gain
K = place(A,B,desired_poles);

disp('State feedback gain K:');
disp(K);

%% Step 4: Form the closed-loop matrix
Acl = A - B*K;

disp('Closed-loop system matrix Acl:');
disp(Acl);

disp('Closed-loop eigenvalues:');
disp(eig(Acl));