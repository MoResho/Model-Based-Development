clc;
clear;

%% Task 1A: While Loop - Print even numbers from 2 to 20
disp('--- Task 1A: Even Numbers from 2 to 20 ---');
num = 2;
while num <= 20
    disp(num);
    num = num + 2;
end

%% Task 1B: While Loop - Factorial Calculator
disp('--- Task 1B: Factorial Calculator ---');
n = input('Enter a non-negative integer to compute its factorial: ');
if n < 0 || floor(n) ~= n
    disp('Invalid input. Please enter a non-negative integer.');
else
    fact = 1;
    i = n;
    while i > 1
        fact = fact * i;
        i = i - 1;
    end
    fprintf('Factorial of %d is %d\n', n, fact);
end

%% Task 2A: Switch Statement - Cost per Mile
disp('--- Task 2A: Trip Cost per Mile ---');
mode = input('Enter mode of transport (car, train, bus, airplane): ', 's');

switch lower(mode)
    case 'car'
        costPerMile = 0.50;
    case 'train'
        costPerMile = 0.30;
    case 'bus'
        costPerMile = 0.20;
    case 'airplane'
        costPerMile = 0.80;
    otherwise
        disp('Unknown mode of transport.');
        costPerMile = -1;
end

if costPerMile ~= -1
    fprintf('Cost per mile for %s is $%.2f\n', mode, costPerMile);
end

%% Task 2B: Switch Statement - Color Code Translator
disp('--- Task 2B: Color Code Translator ---');
colorCode = input('Enter a color code (R, G, B, Y, K): ', 's');

switch upper(colorCode)
    case 'R'
        colorName = 'Red';
    case 'G'
        colorName = 'Green';
    case 'B'
        colorName = 'Blue';
    case 'Y'
        colorName = 'Yellow';
    case 'K'
        colorName = 'Black';
    otherwise
        colorName = 'Unknown color code';
end

fprintf('The color is: %s\n', colorName);

%% Optional Challenge: Total Trip Cost Based on Miles
disp('--- Optional Challenge: Total Trip Cost ---');
mode2 = input('Enter mode of transport for full cost calculation (car, train, bus, airplane): ', 's');
miles = input('Enter number of miles: ');

switch lower(mode2)
    case 'car'
        costPerMile2 = 0.50;
    case 'train'
        costPerMile2 = 0.30;
    case 'bus'
        costPerMile2 = 0.20;
    case 'airplane'
        costPerMile2 = 0.80;
    otherwise
        disp('Unknown mode of transport.');
        costPerMile2 = -1;
end

if costPerMile2 ~= -1
    totalCost = costPerMile2 * miles;
    fprintf('Total cost for a %g-mile trip by %s is $%.2f\n', miles, mode2, totalCost);
end
