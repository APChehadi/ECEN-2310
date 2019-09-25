clc
close all
clear all


%% First Curve
figure
theta = linspace(0, 2*pi);
r = sin(2*theta);

firstcurve = polarplot(theta, r)
saveas(firstcurve, "hw4_Chehadi_Adam_pb_A_firstcurve.pdf")


%% Second Curve
figure
t = linspace(-1000,1000,100000);
x = (1-(t.^2)) ./ (1+(t.^2));
y = (2.*t) ./  (1+(t.^2));

secondcurve = plot(x,y)
axis equal
saveas(secondcurve, "hw4_Chehadi_Adam_pb_A_secondcurve.png")
