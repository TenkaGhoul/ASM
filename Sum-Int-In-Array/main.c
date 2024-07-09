#include <stdio.h>
#include <stdlib.h>

extern int sum_in_array(int array[], int len);

int main(void) {
    int array2[] = {24,-52,123,-666,1337,42};
    int len2 = sizeof(array2) / sizeof(array2[0]);

    printf("La somme des éléments du tableau vaut : %d \n", sum_in_array(array2, len2));

    return 0;
}

