#include <cstdio>

int main() {
    // This is read-only
    // C++ will compile but throw warnings
    // warning: ISO C++ forbids converting a string constant to 'char*' [-Wwrite-strings]
    char * temp = "Paras";

    // The correct way 
    // char* temp = (char *) "Paras";

    int i;
    i = 0;

    temp[3] = 'F';

    for(i = 0; i < 5; i ++) {
        printf("%c\n", temp[i]);
    }
}
