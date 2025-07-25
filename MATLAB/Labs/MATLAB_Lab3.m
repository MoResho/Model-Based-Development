%% Part 1 
C = {20, 'Hello', [1, 2, 3], pi};  
disp('Cell Array Element 2:')
disp(C{2})                        
disp('Second element of cell 3:')
disp(C{3}(2))                    

%% Part 2 
person.name = 'Mohamed';
person.age = 21;
person.city = 'Minuf';
disp('Person Info:')
disp(['Name: ', person.name])
disp(['Age: ', num2str(person.age)])
disp(['City: ', person.city])

%% Part 3
name = 'Mohamed';
surname = ' Harhash';
fullName = [name surname];
disp('Full Name:')
disp(fullName)

%% Part 4
number = 7;
if mod(number, 2) == 0
    disp('The number is even.')
else
    disp('The number is odd.')
end

%% Part 5
disp('Counting from 1 to 10:')
for i = 1:10
    disp(['Number: ', num2str(i)])
end

%% Part 6 
x = linspace(0, 2*pi, 100);
y = sin(x);
plot(x, y, 'b-', 'LineWidth', 2);
xlabel('x (radians)');
ylabel('sin(x)');
title('Sine Wave');
legend('sin(x)');
