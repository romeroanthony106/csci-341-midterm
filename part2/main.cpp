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
    cout << "Enter 1, 2, or 3: " << endl; // display the first prompt
    int value; // the value the user enters
    cin >> value; // user enters a value to choose function

    if (value == 1) { // sent to option 1 if value is 1
        value = option1();
    } else if (value == 2) { // send to option 2 if value is 2
        value = option2();
    } else { // catch all send to option 3
        value = option3();
    }
    cout << "The new value is: " << value << endl;


    return 0;
}

int option1() { // option 1 multiplies th value the user enters a second time by 20
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 20;
}

int option2() { // option 2 multiplies th value the user enters a second time by 2320
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 2320;
}

int option3() { // option 3 multiplies th value the user enters a second time by 73
    int value = 0;
    cout << "Enter a value" << endl;
    cin >> value;
    value = value * 73;
}