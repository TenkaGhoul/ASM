#include <stdio.h>
#include <stdlib.h>

extern int factorial_rec(int n);

int main(void) {
	int n = 9;

	printf("Factorielle de %d vaut : %d \n", n, factorial_rec(n));

	return 0;
}
