# Word Guessing Game: Rundle (Wordle Clone)

This project is a word guessing game similar to Wordle. Players have six attempts to guess a randomly chosen word. If they guess correctly within six tries, they win; otherwise, they lose.

## How the Game Works
The game welcomes the player and explains the rules.
A random word is selected from a provided dictionary file (dictionary-1.txt).
Players receive hints, such as the word’s length and its first and last letters (depending on the word’s length).
Players have six attempts to guess the correct word, entering one letter at a time.
After each attempt, players receive feedback on whether they have won, lost, or should try again.
If the player wins, a congratulatory message and image are displayed. If they lose, the game encourages them to try again with some final fun interactions.

## Features
- Random Word Selection: Randomly chooses a word from a predefined dictionary.
- Hint System: Provides hints about the word's length and key letters.
- Multiple Attempt System: Players get six chances to guess the word.
- Custom Images: Different images are displayed depending on the game’s outcome (win, loss, or retry).
- Player Interaction: Asks the player for their age and favorite number at the end for a playful final message.
- Input Validation: Ensures valid letter input and handles user errors gracefully.
## Technologies Used
- MATLAB: Core programming language for game logic and image processing.
- Image Processing: Used imread to display game images at different stages.
- Random Number Generation: Used to select random words from a dictionary file.
## How to Play
- Clone this repository.
- Run the main MATLAB script.
- Follow the prompts, guess the word, and enjoy the game!
