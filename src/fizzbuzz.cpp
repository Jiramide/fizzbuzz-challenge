// Coda, 11/31/2018

#include <iostream>
#include <string>

std::string output = "";

int main() {
    for(int i; i <= 100; i++) {
        if (i % 3 == 0) {
            output = output + "fizz";
        }
        if (i % 5 == 0) {
            output = output + "buzz";
        }
        if (output == "") {
            output = std::to_string(i);
        }

        std::cout << output << std::endl;

        output = "";
     }
}
