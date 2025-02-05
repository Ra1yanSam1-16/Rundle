% this programe is my project and it is word guessing game similar to
%wordle. Each player gets six attempts to guess a random word and
% if they guess it correctly within the six tries they win otherwise they
%lose 

%the first part of the code welcomes the player to the game and gives 
% them some basic information about the game

fprintf("Welcome to Raiyan's version of worlde or Rundle if you'll" + ...
    " like to call it. \nYou'll get six attempts to guess our magic" + ...
    " word for the day. \nSo lets get started!! \n");

fprintf(" \n");

% this is the second part of the code that gets a random word from the 
% dictionary-1.txt file which was provided in workshop 6. i also made
% use of the function code to provided in workshop 6 to read entries from
% the dictionary

magicWord = dict1(1,randi([1,1000]));
fprintf("Your random word is : %s \n", magicWord);

% this is the third part of the code that reads in different images to be
%used in different parts of the code

startImage = imread('Startpic.png');
winImage = imread('Winpic.png');
lossImage = imread('Losspic.png');
tryAgainImage = imread('Tryagainpic.png');

%fourth part of the code will give the user a hint of the length of the
%magic word

wordLength = strlength(magicWord);
fprintf("The length of our magic word is %d.\n", wordLength);

%converts the string to a char vector
a = convertStringsToChars(magicWord); 

% fifth part of the code will give users a hint of the first word
% if the length of the word is greater than 1 and less than 5, first
% and the last word if the length is greater than or equal to 5 and less 
% than 8 and the first and last two words for all other lengths

if wordLength > 1 && wordLength < 5
    fprintf("The first letter of the word is: ")
    fprintf(a(1));
elseif wordLength >= 5 && wordLength < 8
    fprintf("The first letter of the word is: ")
    fprintf(a(1));
    fprintf("\nThe last letter of the word is: ")
    fprintf(a(wordLength));
else
    fprintf("The first letter of the word is: ")
    fprintf(a(1) + " " + a(2));
    fprintf("\nThe last letter of the word is: ")
    fprintf(a(wordLength-1) + " " + a(wordLength));
 
end


% empty word vector to store the inputs
word = [];
fprintf("\n")
disp("Here we go! Best of luck!!");
imshow(startImage);


% setting boolean variable playerwon which will be checked inside the 
% for loops to help break out of them if the game is won

playerWon = true;

% sixth and the main part of the code. this part is broken down into 6.1
% and 6.2 for the ease of use. other codes besides the for loop have their
% own number of part

%part 6.1: first for loop to give the player six attempts 
for attempts = 1:6
    fprintf("This is attempt number %d\n", attempts);

    % playerWon is set to false because the player has not won yet
    playerWon = false;

    % part 6.2: second for loop to take in inputs from the user 
    % depending on the length of the magicword

    for i = 1:wordLength
        letter = lower(input("Enter a letter: ", "s"));

    % while loop to check if more than one word is entered and if its true
    % an error message is displayed
    
    % the isletter part was copied from the mathworks forum
    while length(letter) > 1 || ~all(isletter(letter)) || isempty(letter)
        disp("Please enter only one letter or only english" + ...
            " alphabets.");
        letter = input("Enter a letter: ", "s");
    end

    % concatenate all the letters inputted in the vector word
    word = [word letter];

    % if to check if the player has guessed the word correctly or not
    if word == magicWord
        playerWon = true;
    end

    % if the player guessed correctly then it will break out of the second
    % for loop

    if playerWon
        break
    end
    end

    % if condition to check if the player has won 
    if playerWon
        fprintf("Congrats you guessed %s correctly!!!", word);
        imshow(winImage);
        break

        % elseif condition to check if the player has lost
    elseif attempts == 6 && ~playerWon
        disp("Hard luck mate. Maybe give it another go?");
        imshow(lossImage);

        %else function to let the player keep trying
    else
        fprintf("Unfortunately %s was not the word. Don't worry" + ...
            " you got this!! \n", word);

        %word vector is set to be null to remove all previously entered 
        %letters

        word =[];
        imshow(tryAgainImage);

    end
end

% this last part of the code uses a function and the main purpose is to
% cheer the player up if they lose

fprintf("\n");
fprintf("Win or loss does not matter because it does not define you." + ...
    " I have two last questions for you. \n")

age = input("What is your age? ");

%Age = str2double(age);

% while loop checks that age is between 2 and 99
while age < 1 || age > 100 || isempty(age)
    disp("Please enter a valid age.");
    age = input("What is your age? ");
end

favNum = input("What is your favourite number? ");

%while loop to check if the favNum is between -99 and 99 and not 0 or 
% empty

while ~(favNum < 100 && favNum > -100 && favNum ~= 0) || isempty(favNum)
    disp("Please enter a number below 99 or above -99 other than 0.");
    favNum = input("What is your favourite number? ");
end


% squareMultiply function is called to square the output
coolness = squareMultiply(age, favNum);
fprintf("On a scale of 1-10, your coolness has been detected as %d", + ...
    coolness);


