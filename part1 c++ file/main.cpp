#include <iostream>
using namespace std;
void playRound();
int main() {
    cout << "playing 3 rounds" << endl;
    for(int i = 0; i < 3; i++){
        playRound();
    }

    cout << "you lost 3 times, computer wins!" << endl;


    return 0;
}

void playRound(){
    cout << "enter 1, 2, or 3, for rps" << endl;
    int choice;
    cin >> choice;

    if(choice == 1){
        cout <<"computer chooses paper, you loose" << endl;
    }
    else if(choice == 2){
        cout << "computer chooses scissors, you loose" << endl;
    }
    else if(choice == 3){
        cout << "computer chooses rock, you loose" << endl;
    }
    else{
        cout << "you didn't a valid number. you forfeit and loose by default" << endl;
    }
}