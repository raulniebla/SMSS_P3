function dx = TRASL(t,x)
% Amortiguador auto
% Parámetros / Condiciones iniciales
m1 = 290;     %kg
b1 = 1000;    %Ns/m
m2 = 59;      %kg
k1 = 16182;   %N/m
f  = 0;       %N
k2 = 19000;   %N/m

z1 = 0.05*sin(0.5*pi*t);  %m
z2 = 0.05*sin(20*pi*t);   %m


dx = zeros(4,1); % x(1) = x_1            
                 % x(2) = x_2            
                 % x(3) = dot(x_1)       
                 % x(4) = dot(x_2)       

% Dinamica del sistema
dx(1) = x(3);
dx(2) = x(4);
dx(3) = (1/m1)*(f - b1*x(3) + b1*x(4) - k1*x(1) + k1*x(2));
dx(4) = (1/m2)*(-f + k2*z1 + b1*x(3) - b1*x(4) + k1*x(1) - (k1+k2)*x(2));