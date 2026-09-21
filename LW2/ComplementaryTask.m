% complementary task (Variant 5)

clc;
clear;

% prompt user to input vector A
A = input('Enter vector A in brackets (e.g. [1 2 3 4]): ');

% construct vector B: original vector A followed by reversed vector A
% uses indexing with ':', 'end', and steps of -1 to reverse
B = [A, A(end:-1:1)];

% display the required text and result
disp('vector B is:');
disp(B);