% Complementary task    
%% Task 2
[X, Y] = meshgrid(-2:0.1:2);
Z = 1 - (X.^2 + Y.^2);

surf(X, Y, Z, 'FaceColor', 'b');
alpha(0.5);