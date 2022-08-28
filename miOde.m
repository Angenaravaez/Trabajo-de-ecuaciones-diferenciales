function dydt = miOde(t,y)

dydt(1) =  y(2);
dydt(2) = -sin(t)*y(1);
dydt = dydt';

end