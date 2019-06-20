#include <ctime>
#include <iostream>
#include <cstdlib>

int const length = 50000;

int main()
{
    srand(time(0));
    int numbers[length];
    for(int i = 0; i < length; i++) {
        numbers[i] = rand() % 65535;
    }

    int temp;
    for (int i = 0;i < length; i++) {
		for (int j = 0; j< length-1; j++) {
			if (numbers[j] < numbers[j+1]) {
    			temp = numbers[j];
    			numbers[j] = numbers[j+1];
    			numbers[j+1] = temp;
			}
		}
	}

    // std::cout << "done" << std::endl;

    return 0;
}
