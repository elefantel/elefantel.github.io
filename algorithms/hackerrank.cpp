#include <iostream>
#include <string>
#include <algorithm>
using namespace std;

int missingV1(int numbers[]) {
    if (numbers[0] != 1) {
        return 1;
    }
    int size = sizeof(numbers)/sizeof(int);

    // O(NlogN)
    int sorted[] = sort(numbers, );

    // O(N)
    for(int index = 0; index < size; index++) {
        if(sorted[index + 1] - sorted[index] > 1) {
            return sorted[index] + 1;
        }
    }

    if(sorted[size - 1] != size + 1) {
        return size + 1;
    }

    return -1;
}

int main() {
    int numbers[] = {1, 2, 3, 4, 5, 6, 7, 8, 9};
    int missing = missingV1(numbers);
    cout << "Missing number is: " << missing;
    return 0;
}