clc
close all
clear all

% check bestofn for n = 3, 5, 7

p = 0:0.001:1;

f3 = bestofn(3);
f5 = bestofn(5);
f7 = bestofn(7);

figure
hold on;
plot(p, f3(p), "b")
plot(p, f5(p), "r")
plot(p, f7(p), "g")

title("Probability of Winning a Best-Of-N Tournament")
xlabel("Probability of Game Win (p)")
ylabel("Probability of Tournament Win")
legend("n = 3", "n = 5", "n = 7", "Location", "SouthEast")
hold off

if(abs(f5(p) - (1 - f5(1-p))) < exp(-12))
    fprintf("The condition for n = 5 is satisfied.\n")
else
    fprintf("Something went wrong!\n")
end
