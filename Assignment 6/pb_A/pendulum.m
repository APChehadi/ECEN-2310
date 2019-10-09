clc
close all
clear all

x0 = [pi/2;
      -pi];

pendulum_plot(1, x0, 10);

function pendulum_plot(l , x0 , T)
    % PENDULUM Computes trajectory of pendulum
    % PENDULUM (l, x0 , T)
    % l is the length of the pendulum
    % x0 is the column vector of initial conditions :
    % angular displacement and velocity
    % T is the end time
    
    g = 9.81; % m/s^2
    options = odeset("MaxStep", 0.01 , "Stats", "on");
    sol = ode45 ( @(t ,x ) f (t ,x ,g ,l) , [0 T] , x0 , options );
    subplot (2 ,1 ,1)
    plot ( sol .x , sol .y)
    legend ("angular displacement ( rad )",...
            "angular velocity ( rad /s)",...
            "Location ", "southwest")
    title("waveforms")
    xlabel("time(s)")
    subplot(2 ,1 ,2)
    plot(sol .y(1 ,:) , sol.y(2 ,:))
    title("phase plane")
    xlabel("angular displacement (rad)")
    ylabel("angular velocity (rad/s)")
end


function xdot = f(~, x, g, l)
    % F pendulum differential equation
    % x(1) is the angular displacement from the vertical
    % x(2) is the angular velocity
    % g is the acceleration of gravity
    % l is the length of the pendulum
    
    xdot = [x(2);
            -g/1 * sin(x(1))];
end