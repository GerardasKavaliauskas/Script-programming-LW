%% LW5 Main Task
clear; clc; format compact;

%% Task 1: Data structures
disp('=== TASK 1: Data Structures ===');

% 1a) Create a cell with student data and convert it to a structure
student_cell = {'John', 'Doe', '123 Main Street'};
fields = {'Name', 'Surname', 'Address'};
student_struct = cell2struct(student_cell, fields, 2);

% 1b) Validate if the variable is a structure
is_valid = isstruct(student_struct);

% Display results
disp('Original Cell:');
celldisp(student_cell);

disp('Converted Structure:');
disp(student_struct);

disp(['Is it a structure? ', num2str(is_valid)]);
disp('--------------------------------------------------');


%% Task 2: Operation flow control
disp('=== TASK 2: Operation Flow Control ===');

while true
    x = input('Enter x (or 0 to exit): ');
    y = input('Enter y (or 0 to exit): ');
    
    % Exit condition: both inputs are 0
    if x == 0 && y == 0
        disp('Program terminated.');
        break;
    end
    
    % Calculate angle b and vector n
    b = atan(y / x);
    n = (1:10)';
    
    % Calculate left and right sides of De Moivre's formula
    left_side = (cos(b) + 1i*sin(b)).^n;
    right_side = cos(n*b) + 1i*sin(n*b);
    difference = abs(left_side - right_side);
    
    % Display table: [Left Side, Right Side, Difference]
    disp('    Left Side               Right Side              Difference');
    disp([left_side, right_side, difference]);
    disp(' ');
end