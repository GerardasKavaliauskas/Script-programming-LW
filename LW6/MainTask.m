%% LW 6: Main Task (Variant 5)
clear; clc; close all;

%% Task 1: Creating Matlab functions
disp('=== TASK 1: Function Demo ===');

% Display help documentation for the inner function
help farenh2cels;

% Test the function
F_test = [32, 98.6, 212];
C_test = farenh2cels(F_test);

disp('Fahrenheit values:');
disp(F_test);
disp('Converted Celsius values:');
disp(C_test);

disp('--------------------------------------------------');

%% Task 2: Using Matlab global variables
disp('=== TASK 2: Global Variables ===');

% Declare global variables in script scope
global x y;

% Generate x vector from 0 to 2*pi with a step of 0.2
x = 0:0.2:2*pi;

% Call function (reads 'x' globally and assigns result to 'y' globally)
calculate_trig;

% Plot using red dotted line with square markers ('r:s')
figure;
plot(x, y, 'r:s', 'LineWidth', 1.5, 'MarkerSize', 6, 'MarkerFaceColor', 'r');
xlabel('x');
ylabel('sin(x) + cos(x)');
title('Plot of sin(x) + cos(x)');
grid on;

% Demonstrate global variables in workspace
disp('Global variables active in workspace:');
whos global;


%% --- Local Functions ---

function C = farenh2cels(F)
% FARENH2CELS Converts temperature from Fahrenheit to Celsius.
%   C = FARENH2CELS(F) calculates the temperature in Celsius (C)
%   for a given temperature in Fahrenheit (F).
%
%   Formula: C = (F - 32) * (5 / 9)
%
%   Input:
%       F - Temperature in Fahrenheit (scalar, vector, or matrix)
%   Output:
%       C - Temperature in Celsius

    C = (F - 32) * (5 / 9);
end

function calculate_trig
% CALCULATE_TRIG Calculates sin(x) + cos(x) using global variables x and y.
    global x y;
    y = sin(x) + cos(x);
end