#include <math.h>
#include <stdlib.h>
#include "armstrong_numbers.h"

bool is_armstrong_number(int number) {
    if (number < 10)
        return true;

    int size = floor(log10(abs(number))) + 1;

    int result = 0;
    for (int temp = number; temp > 0; temp /= 10) {
        int digit = temp % 10;
        result += pow(digit, size);
    }

    return result == number;
}
