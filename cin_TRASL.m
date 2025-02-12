clear all;
clc;
% ODE que soluciona (numéricamente) el sistema de amortiguador
[t,x] = ode45(@TRASL,[0 5],[0 0 0 0]);

figure(1)
plot(t,x);

