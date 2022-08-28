close all;
clear all;
clc;

% Para esta solución usando un ejemplo similar a la anterior pues el
% sistema a solucionar es un sistema no lineal como en el ejemplo anterior.

%% PARÁMETROS DEL SISTEMA DEL PENDULO
tp = 0.01;
TiempoS = 40;
L = TiempoS / tp;
l = 0.3;
pos = zeros(1,L);
vel = zeros (1,L);
acel = zeros(1,L);
g = 9.8;                   % Gravedad
m = 0.5;                   % Masa
b = 0.3;                   % Coeficiente de Fricción
v = 1.5;                   % Voltaje motor dc
J = 1;                     % Momento
pos(1)  = pi/4;            % Posición inicial 
vel(1)  = 0;               % Velocidad inicial
acel(1) = 0;               % Aceleración inicial

%% OPERACIONES

for k = 1:1:L
    acel(k+1) = -(m*g*l)/J * sin(pos(k))  -  b/J*vel(k)  + v/2*J;
    vel (k+1) =  vel(k) + tp*acel(k);
    pos (k+1) = pos(k) + tp * vel(k);
end

%% Graficación del comportamientos del sistema

T = [0:tp:tp*L];
plot (T,pos,'r',T,vel,'b',T,acel,'m');
legend('Posición','Velocidad', 'Aceleración')
title('Péndulo');
xlabel('Tiempo'),ylabel('Y')
grid on;