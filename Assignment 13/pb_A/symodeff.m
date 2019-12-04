clc
close all
clear all

syms x(t)
Dx = diff(x);

syms g
ode = diff(x, t, 2) == -g;
x0 = x(0) == 10;
xp0 = Dx(0) == 0;

conds = [x0, xp0];

xSol1(t) = dsolve(ode);
xSol1 = simplify(xSol1);
disp('General solution:'); disp(xSol1);

ode_n = subs(ode, g, 9.81);

xSol(t) = dsolve(ode_n, conds);
xSol = simplify(xSol);
disp('Particular solution:'); disp(xSol);

fplot(xSol);
ylim([0, 2]);

