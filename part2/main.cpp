/**
 * "Decompiled" hack.s
 *
 * Through observation, hack.s multiplies an input but some constant that is selected based on user input
 */

#include <iostream>
using namespace std;

int option1();
int option2();
int option3();

int main() {
    cout << "Enter 1, 2, or 3: " << endl;
    int value;
    cin >> value;

    if(value == 1){
        value = option1();
    }
    else if(value == 2){
        value = option2();
    }
    else if(value == 3){
        value = option3();
    }
    cout << "The new value is: " << value << endl;


    return 0;
}

int option1(){
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 20;
}

int option2(){
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 2320;
}

int option3(){
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 73;
}