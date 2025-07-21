%%%%%%%%%Part 1%%%%%%%%%%%
intVar = int32(42);
doubleVar = 3.1416;
disp(['intVar type: ', class(intVar)]);
disp(['doubleVar type: ', class(doubleVar)]);

%%%%%%%%%Part 2%%%%%%%%%%%
evenNumbers = [2, 4, 6, 8, 10]
primeNumbers = [2; 3; 5; 7; 11]

%%%%%%%%%Part 3%%%%%%%%%%%
identityMatrix = eye(3)
magicSquare = magic(2)

%%%%%%%%%Part 4%%%%%%%%%%%
combinedVector = horzcat(evenNumbers, primeNumbers')

%%%%%%%%%Part 5%%%%%%%%%%%
new_magic = [magicSquare, zeros(2,1)];
combinedMatrix = [identityMatrix; new_magic]