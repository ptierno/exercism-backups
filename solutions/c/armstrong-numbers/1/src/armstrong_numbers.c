#include <math.h>
#include <stdlib.h>
#include "armstrong_numbers.h"

bool is_armstrong_number(int i) {
    int size = floor(log10(abs(i))) + 1;

    if (size == 1)
        return true;

    int r = 0;
    int n = i;
    while (n > 0) {
        int digit = n % 10;
        r += (int)(pow(digit, size) + 0.5);
        n /= 10;
    }

    return (r == i) ? true : false;
}
