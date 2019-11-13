clc
close all
clear all

x = 0:0.05:1;
y = 0:0.05:1;

[X, Y] = meshgrid(x, y);
Z = X + Y - (X.^2 + Y.^2);
P = surf(X, Y, Z);
colorbar;
colormap(jet);
title('$x + y - (x^2 + y^2)$', 'fontsize', 14, 'interpreter', 'latex');

