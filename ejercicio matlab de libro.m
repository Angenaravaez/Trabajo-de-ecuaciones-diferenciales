% Soluci�n de E.D.O's mediante la Herramienta de Matlab
% La Ecuaci�n a resolver se escogi� el siguiente: Y" + sen(X)*Y = 0.
% Soluci�n a trav�s de ODE45

close all;
clear all;
clc;

% Se declara el tiempo de simulaci�n
t = [0:0.1:10];
% Se declaran las condiciones inciales, x = 0 y Y = 1
CondIn = [0,1];
% Se reciben las soluciones del sistema en X y en Y a trav�s del comando
% ODE45
[X,Y] = ode45 (@miOde,t,CondIn);

% Y es una matriz pues resuelve un sistema de 2do orden, recibe toda la
% fila con la misma columna para apartarse los valores resueltos en la
% variable de inter�s y su derivada
y = Y(:,1);
ypunto = Y(:,2);


% Se grafican las dos variables que se encontraron para compararse entre s�
plot(t,y,'r',t,ypunto,'b');
grid on;
hold on;
legend ('y', 'ypunto')
function dydt = miOde(t,y)

dydt(1) =  y(2);
dydt(2) = -sin(t)*y(1);
dydt = dydt';

end