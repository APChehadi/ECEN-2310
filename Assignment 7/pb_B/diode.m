clc
close all
clear all

I0 = 10^(-12);
n = 1;
V_t = ((1.3806488*10^(-23))*300)/(1.602176565*10^(-19));
R = 10^3;
V_s = 3;

f1 = @(V) I0.*(exp(V./(n.*V_t)) - 1);
f2 = @(V) V ./ R;

[v1, func, flag] = fsolve(@(v1) f1(v1) - f2(V_s-v1), 1.2)

if(flag == 1)
    disp("Solution found");
else
    disp("No solution found");
end

fprintf("v1 = %g\n function = %g\n flag = %g\n\n", v1, func, flag);

v2 = V_s-v1;
disp("v2 = "); disp(v2);

i1 = f1(v1);
i2 = f2(v2);
fprintf("i = i1 = %0.4f i2 = %0.4f\n\n", i1, i2);

vp = linspace(1, 35, 1000);
plot(f1(vp),"-g");
hold on
plot(f2(vp), "-b");
xlabel("Voltage");
ylabel("Current");
title("Current vs Voltage");
legend("f1", "f2");

p1 = @(vn1) vn1 .* f1(vn1);
p2 = @(vn2) vn2 .* f2(vn2);

pd1 = p1(v1);
pd2 = p2(v2);
fprintf("Power dissipated by the diode: %g watts\n", pd1);
fprintf("Power dissipated by the resistor: %g watts\n", pd2);

pd12 = p1(V_s);
pd22 = p2(V_s);
fprintf("Power dissipated by the diode alone: %g watts\n", pd12);
fprintf("Power dissapated by the resisitor alone: %g watts\n", pd22);
