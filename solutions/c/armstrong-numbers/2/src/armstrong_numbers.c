#include <math.h>
#include <stdlib.h>
#include "armstrong_numbers.h"

bool is_armstrong_number(int i) {
    int size = floor(log10(abs(i))) + 1;

    if (size == 1)
        return true;

    int result = 0;
    int temp = i;
    while (temp > 0) {
        int digit = temp % 10;
        result += (int)(pow(digit, size) + 0.5);
        temp /= 10;
    }

    return (result == i) ? true : false;
}
