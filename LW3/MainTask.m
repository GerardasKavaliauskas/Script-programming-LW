%% Laboratory Work 1: Preparation of 2D graphics (Variant 5)
clear; clc; close all;

%% -------------------------------------------------------------------
% Task 1: Creating 2-D graphs
% --------------------------------------------------------------------

% --- Task 1a ---
% Function: f(x) = sin(x) + cos^2(x)
% Range: x from 0 to 2*pi with step 0.5
x1 = 0:0.5:2*pi;
f1 = sin(x1) + (cos(x1)).^2;

figure(1);
% Red dots ('ro') with yellow center ('MarkerFaceColor', 'y')
plot(x1, f1, 'ro', 'MarkerEdgeColor', 'r', 'MarkerFaceColor', 'y', ...
     'MarkerSize', 8, 'LineWidth', 1.5);
grid on;
title('Task 1a: f(x) = sin(x) + cos^2(x)');
xlabel('x');
ylabel('f(x)');
legend('f(x) = sin(x) + cos^2(x)', 'Location', 'northeast');

% Set axis limits dynamically based on minimum and maximum values (Task 1c)
axis([min(x1), max(x1), min(f1)-0.2, max(f1)+0.2]);


% --- Task 1b & 1c ---
% Functions: f(x) = x^e, f(x) = x^(2e), f(x) = x^(3e)
% For common domain (x > 0), using x between 0 and 2*pi with step 0.1
x2 = 0.1:0.1:2*pi; 
f2_1 = x2.^exp(1);
f2_2 = x2.^(2*exp(1));
f2_3 = x2.^(3*exp(1));

figure(2);
plot(x2, f2_1, 'r-', 'LineWidth', 1.5); hold on;
plot(x2, f2_2, 'g--', 'LineWidth', 1.5);
plot(x2, f2_3, 'b-.', 'LineWidth', 1.5);
hold off;
grid on;

title('Task 1b: Comparison of f(x) = x^{k \cdot e}');
xlabel('x');
ylabel('f(x)');
legend('f(x) = x^e', 'f(x) = x^{2e}', 'f(x) = x^{3e}', 'Location', 'northwest');

% Set limits to cover the range where all functions are visible together
axis([0, 1.5, 0, 10]);


%% -------------------------------------------------------------------
% Task 2: Preparation of specialized plots
% --------------------------------------------------------------------

% Function: y(x) = x^3 + sin(x)
% Range: x from -2*pi to 2*pi
x3 = -2*pi : 0.4 : 2*pi;
y3 = x3.^3 + sin(x3);

% --- Task 2a: Vector representation on horizontal line using quiver ---
figure(3);
subplot(2, 1, 1);
% u = 0 (no horizontal length), v = y3 (vertical magnitude/direction)
quiver(x3, zeros(size(x3)), zeros(size(x3)), y3, 0, 'b', 'LineWidth', 1.2);
grid on;
title('Task 2a: Vector Representation of y(x) = x^3 + sin(x)');
xlabel('x');
ylabel('y(x) Vector');
axis([-2*pi-0.5, 2*pi+0.5, min(y3)*1.1, max(y3)*1.1]);

% --- Task 2b: Bar representation ---
subplot(2, 1, 2);
bar(x3, y3, 'FaceColor', [0.2 0.2 0.2]); % Dark gray bars matching example
grid on;
title('Task 2b: Bar Representation of y(x) = x^3 + sin(x)');
xlabel('x');
ylabel('y(x)');
axis([-2*pi-0.5, 2*pi+0.5, min(y3)*1.1, max(y3)*1.1]);