% function_tasks_all_in_one.m
% All tasks in one script with local and nested functions
% Author: [Your Name]
% Date: [Today's Date]

clc;
clear;

%% Task 1: Creating a Simple Function
a = 5;
b = 10;
sumResult = mySimpleFunction(a, b);
fprintf('Task 1 - Sum of %d and %d is: %d\n\n', a, b, sumResult);

%% Task 2: Function Inputs and Outputs
radii = [1, 2.5, 5];
for i = 1:length(radii)
    area = calculateCircleArea(radii(i));
    fprintf('Task 2 - Area of circle with radius %.2f is %.4f\n', radii(i), area);
end
fprintf('\n');

%% Task 3: Function with Multiple Outputs
sampleData = [10, 20, 30, 40, 50];
[avg, stddev] = computeStatistics(sampleData);
fprintf('Task 3 - Mean: %.2f, Standard Deviation: %.2f\n\n', avg, stddev);

%% Task 4: Nested Functions
result = outerFunction(7, 3);
fprintf('Task 4 - Result from nested innerFunction: %d\n\n', result);

%% Task 5: Function Handles
vec = 1:5;
square = @(x) x.^2;
cube = @(x) x.^3;
fprintf('Task 5 - Applying square: %s\n', mat2str(applyFunction(square, vec)));
fprintf('Task 5 - Applying cube:   %s\n\n', mat2str(applyFunction(cube, vec)));

%% Task 6: Anonymous Functions
triangleArea = @(base, height) 0.5 * base * height;
b = [3, 5, 8];
h = [4, 2, 6];
for i = 1:length(b)
    fprintf('Task 6 - Triangle area with base %.1f and height %.1f: %.2f\n', b(i), h(i), triangleArea(b(i), h(i)));
end
fprintf('\n');

%% Task 7: Using Built-in Functions
dataVec = [12, 45, 3, 22, 18];
fprintf('Task 7 - Vector: %s\n', mat2str(dataVec));
fprintf('Max: %d, Min: %d, Sum: %d\n', max(dataVec), min(dataVec), sum(dataVec));

%% Local Function Definitions

function s = mySimpleFunction(x, y)
% Task 1: Returns the sum of two numbers
    s = x + y;
end

function area = calculateCircleArea(radius)
% Task 2: Calculates the area of a circle
    area = pi * radius^2;
end

function [meanVal, stdVal] = computeStatistics(data)
% Task 3: Returns mean and standard deviation
    meanVal = mean(data);
    stdVal = std(data);
end

function result = outerFunction(a, b)
% Task 4: Outer function calling a nested inner function
    result = innerFunction(a, b);
    
    function sumResult = innerFunction(x, y)
        sumResult = x + y;
    end
end

function outVec = applyFunction(funcHandle, vec)
% Task 5: Applies a function handle to a vector
    outVec = arrayfun(funcHandle, vec);
end
