clc
close all
clear all

a = 0:0.001:1;
B = 0:0.001:1;

[X, Y] = meshgrid(a, B);
Z = X + Y - (X.^3 + Y.^3);
[c, h] = contourf(X, Y, Z);
colorbar;
clabel(c, h);
colormap(hot);
hold on

maxa = X(Z == max(max(Z)));
maxb = Y(Z == max(max(Z)));
z = Z(Z == max(max(Z)));
plot3(maxa, maxb, z, '*k');
text(maxa, maxb, ['\bullet', num2str(z)]);

xlabel('\alpha');
ylabel('\beta');
title('$ \alpha + \beta - ( \alpha^2 + \beta^2)$', 'fontsize', 14, 'interpreter', 'latex');