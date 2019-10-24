clc
close all
clear all

T = readtable("nlfit.csv");
T = table2array(T);


x = T(2:end, 1);
y = T(2:end, 2);
pf = polyfit(x, y, 1);
subplot(2, 1, 1);
plot(x, y, "o", x, polyval(pf, x));
title("Current vs Voltage");
xlabel("Voltage");
ylabel("Current");
fprintf("Linear Equation: I = %4.4fV + %4.4f\n\n", pf(1), pf(2));


subplot(2, 1, 2);
scatter(x, y, "r");
lf = polyfit(log(x), log(y), 1);
t = linspace(0, 100);
line(t, exp(lf(2)) * t.^(lf(1)));
title("Power Law Fitting");
xlabel("Voltage");
ylabel("Current");
[R, p] = corrcoef(log(x), log(y));
fprintf("Power law: I = %g * V^%g\n", exp(lf(2)), lf(1));
fprintf("Correlation coefficient for the logarithms: %g\n", R(1 ,2));
fprintf("p-value for the logarithms: %g\n", p(1, 2));
