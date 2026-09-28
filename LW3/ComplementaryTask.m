%% Laboratory Work 1 - Part P: Graphical representation of signals (Variant 5)
clear; clc; close all;

%% 1. Generate Sample Signal Data (Simulating Task 3 of Laboratory Work 2)
% Time vector
t = 0:0.01:2;

% Original signal (e.g., noisy sine wave)
signal_orig = 5 * sin(2 * pi * t) + 1.5 * cos(6 * pi * t) + 2;

% Filtered signal (e.g., smoothed signal)
signal_filt = movmean(signal_orig, 5);

% Threshold values
U1 = 3.5;
U2 = -1.5;

%% 2. Create Figure with Horizontal Layout
figure('Name', 'Preparation of 2D Graphics - Part P', 'NumberTitle', 'off');

% --- Graph (a): Original and Filtered Signals with Thresholds ---
subplot(1, 2, 1); % Requirement 1: Horizontal arrangement (1 row, 2 columns)

% Solid line for original signal, width 2
plot(t, signal_orig, 'b-', 'LineWidth', 2, 'DisplayName', 'Original Signal'); 
hold on;

% Dotted line for filtered signal, width 2
plot(t, signal_filt, 'r:', 'LineWidth', 2, 'DisplayName', 'Filtered Signal'); 

% Horizontal line for U1 threshold
yline(U1, 'k--', 'LineWidth', 1.5, 'DisplayName', sprintf('Threshold U_1 = %.1f', U1));

% Requirement 4: Purple dashed line for U2 threshold
yline(U2, 'm--', 'LineWidth', 1.5, 'DisplayName', sprintf('Threshold U_2 = %.1f', U2));

hold off;
grid on;
title('a) Original vs Filtered Signal with Thresholds');
xlabel('Time [s]');
ylabel('Voltage [V]');
% Requirement 6: Legend in upper-right corner
legend('Location', 'northeast'); 

% Set limits so all data and threshold lines are clearly visible
ylim([min([signal_orig, U2]) - 1, max([signal_orig, U1]) + 1]);


% --- Graph (b): Discrete Signal > U1, Max/Min Markers ---
subplot(1, 2, 2); % Right plot[cite: 11]

% Filter values exceeding threshold U1[cite: 11]
t_exceed = t;
signal_exceed = signal_orig;
signal_exceed(signal_orig <= U1) = NaN; % Hide values below or equal to U1

% Discrete signal format (stem plot) for values exceeding U1[cite: 11]
stem(t_exceed, signal_exceed, 'filled', 'MarkerFaceColor', [0.2 0.6 0.8], ...
     'LineWidth', 1.5, 'DisplayName', 'Signal > U_1');
hold on;

% Threshold U1 reference line
yline(U1, 'k--', 'LineWidth', 1.5, 'DisplayName', sprintf('Threshold U_1 = %.1f', U1));

% Find Global Maximum and Minimum of the original signal[cite: 11]
[max_val, max_idx] = max(signal_orig);
[min_val, min_idx] = min(signal_orig);

% Requirement 5: Maximum voltage using green circle marker (size 9)[cite: 11]
plot(t(max_idx), max_val, 'go', 'MarkerSize', 9, 'MarkerFaceColor', 'g', ...
     'LineWidth', 1.5, 'DisplayName', sprintf('Max Voltage (%.2f V)', max_val));

% Minimum voltage marker[cite: 11]
plot(t(min_idx), min_val, 'ro', 'MarkerSize', 9, 'MarkerFaceColor', 'r', ...
     'LineWidth', 1.5, 'DisplayName', sprintf('Min Voltage (%.2f V)', min_val));

hold off;
grid on;
title('b) Discrete Values > U_1 with Max/Min Markers');
xlabel('Time [s]');
ylabel('Voltage [V]');
% Requirement 6: Legend in upper-right corner[cite: 11]
legend('Location', 'northeast');

% Axis limits ensuring all points are fully visible[cite: 11]
ylim([min(signal_orig) - 1, max(signal_orig) + 1]);