clc
close all
clear all

syms f1(t)
f1(t) = sin(pi*t);
syms f2(t)
f2(t) = cos(2*pi*t).*exp(-t);
syms g(t)
g(t) = 20.*sqrt(t);

t = linspace(0, 10);

yyaxis left
hold on
plot(t, f1(t));
plot(t, f2(t));
ylim([-1 1])
ylabel('$f_{1}(t), f_{2}(t)$','Interpreter','Latex')

yyaxis right
plot(t, g(t));
ylim([0 70])
ylabel('$g(t)$','Interpreter','Latex')

xlabel("t")
title("Dual-Axis Plot")