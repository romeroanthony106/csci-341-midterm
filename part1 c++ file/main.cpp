#include <iostream>
using namespace std;
void playRound();
int main() {
    cout << "playing 3 rounds" << endl;
    for(int i = 0; i < 3; i++){ // loop for round played
        playRound();
    }

    cout << "you lost 3 times, computer wins!" << endl; //tells the player they lost


    return 0;
}

void playRound(){
    cout << "enter 1, 2, or 3, for rps" << endl; // prompt at the begining of the round
    int choice;
    cin >> choice; //read in the user choice

    if(choice == 1){
        cout <<"computer chooses paper, you loose" << endl; // computer "chooses" paper if player enters rock
    }
    else if(choice == 2){
        cout << "computer chooses scissors, you loose" << endl; //computer "chooses" scissors if player enters paper
    }
    else if(choice == 3){
        cout << "computer chooses rock, you loose" << endl; // computer "chooses" rock if player enters rock
    }
    else{
        cout << "you didn't a valid number. you forfeit and loose by default" << endl; // computer "wins" if player enters non valid choice
    }
}