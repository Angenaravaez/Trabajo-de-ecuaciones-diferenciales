% Solución de E.D.O's mediante la Herramienta de Matlab
% La Ecuación a resolver se escogió el siguiente: Y" + sen(X)*Y = 0.
% Solución a través de ODE45

close all;
clear all;
clc;

% Se declara el tiempo de simulación
t = [0:0.1:10];
% Se declaran las condiciones inciales, x = 0 y Y = 1
CondIn = [0,1];
% Se reciben las soluciones del sistema en X y en Y a través del comando
% ODE45
[X,Y] = ode45 (@miOde,t,CondIn);

% Y es una matriz pues resuelve un sistema de 2do orden, recibe toda la
% fila con la misma columna para apartarse los valores resueltos en la
% variable de interés y su derivada
y = Y(:,1);
ypunto = Y(:,2);


% Se grafican las dos variables que se encontraron para compararse entre sí
plot(t,y,'r',t,ypunto,'b');
grid on;
hold on;
legend ('y', 'ypunto')
