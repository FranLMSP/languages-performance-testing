#include <ctime>
#include <iostream>
#include <cstdlib>
#include <algorithm>

int const length = 50000;

int main()
{
    srand(time(0));
    int numbers[length];
    for(int i = 0; i < length; i++) {
        numbers[i] = rand() % 65535;
    }

    std::sort(std::begin(numbers), std::end(numbers));

    return 0;
}
