%LW5 Complementary
% Prompt user for dimensions x and y
x = input('Enter x: ');
y = input('Enter y: ');

for i = 1:20
    % Generate random natural numbers 1 <= m <= x and 1 <= n <= y
    m = randi([1, x]);
    n = randi([1, y]);
    
    % Create x by y matrix of zeros
    A = zeros(x, y);
    
    % Assign NaN to element A(m,n)
    A(m, n) = NaN;
    
    % Display matrix and wait 2 seconds
    clc;
    fprintf('Iteration %d/20 (m = %d, n = %d):\n', i, m, n);
    disp(A);
    pause(2);
end