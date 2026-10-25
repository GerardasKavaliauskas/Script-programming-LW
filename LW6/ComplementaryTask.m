%% LW6 : Complementary Task (Variant 5)
clear; clc;

disp('=== Testing specfunc with 1 argument ===');
res1 = specfunc(4);
fprintf('specfunc(4) = %d\n\n', res1);

disp('=== Testing specfunc with 2 arguments ===');
res2 = specfunc(3, 2);
fprintf('specfunc(3, 2) = %d\n\n', res2);

%% --- Local Function ---

function out = specfunc(varargin)
    if nargin == 1
        x = varargin{1};
        out = x.^2;
    elseif nargin == 2
        x = varargin{1};
        y = varargin{2};
        out = x.^2 + y.^3;
    else
        error('Function requires 1 or 2 input arguments.');
    end
end