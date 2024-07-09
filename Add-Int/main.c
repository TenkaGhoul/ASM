#include <stdio.h>
#include <stdlib.h>

extern int add_int(int a, int b);

int main(void) {
	int a = 3;
	int b = 7;
	int c = 10;
	int d = -2;

	printf("La somme de %d et de %d est égal à : %d \n", a, b, add_int(a,b));
	printf("La somme de %d et de %d est égal à : %d \n", c, d, add_int(c,d));
	return 0;
}
