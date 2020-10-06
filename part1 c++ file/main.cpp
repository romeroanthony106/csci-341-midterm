#include <iostream>

using namespace std;

void playRound();

int main() {
    cout << "Playing best two out of three rock, paper, scissors rounds" << endl;

    // play three rounds
    for (int i = 0; i < 3; i++) { // loop for round played
        playRound();
    }

    // output the result of the game
    cout << "You lost 3 times, the computer wins!" << endl; // tells the player they lost
    return 0;
}

/**
 * Uses std in and std out to simulate a single round of unwinnable rock, paper, scissors
 */
void playRound() {
    // prompt at the beginning of the round
    cout << "Choose rock, paper, or scissors:\n  1: Rock\n  2: Paper\n  3: Scissors" << endl;

    // read in the user choice
    int choice;
    cin >> choice;

    // choose the winning option
    switch (choice) {
        case 1:
            cout << "Computer chooses paper" << endl;
            break;
        case 2:
            cout << "Computer chooses scissors" << endl;
            break;
        case 3:
            cout << "Computer chooses rock" << endl;
            break;
        default:
            cout << "Please only enter 1, 2, or 3" << endl;
    }
    cout << "You lose!" << endl << endl;
}