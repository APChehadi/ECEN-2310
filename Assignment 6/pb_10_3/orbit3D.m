clc
close all
clear all

plot_orbit3D([-50; 10; 100; -.1; -.05; .03], 50000, 10, @matlab_solve);

function plot_orbit3D(y0, T, s, solve)
    sol = solve(@orbit, y0, 0:s:T);
    clf
    subplot(2, 1, 1);
    plot3([0], [0], [0], 'or');
    hold on
    title('Position');
    xlabel('X');
    ylabel('Y');
    zlabel('Z');
    plot3(sol(1,:), sol(2,:), sol(3,:), '-b');
    axis('equal');
    v = velocity(sol);
    subplot(2, 1, 2);
    hold on
    title('Velocity');
    xlabel('Time');
    ylabel('Absolute Velocity');
    plot(v, '-b');
end

function ydot = orbit(~, y)
    r = norm(y(1:3));
    ydot = [y(4);
    y(5);
    y(6);
    -1/r^3 * y(1);
    -1/r^3 * y(2);
    -1/r^3 * y(3)];
end

function V = velocity(sol)
    V = sqrt(sol(4,:).*sol(4, :) + sol(5,:).*sol(5,:) + sol(6,:).*sol(6,:));
end
function sol = matlab_solve(ydot, init, t)
    [dummy, sol] = ode45(ydot, t, init);
    sol = sol';
end