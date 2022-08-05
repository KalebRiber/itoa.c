#include <stdio.h>
#include <stdlib.h>

typedef unsigned char byte;

char * itoa(int number) {
  int i = 1,
      n = 0,
      mul = i;

  byte p = number < n;

  if (p) {
    number *= -1;
    i++;
  }

  while (number % mul != number && i++) mul *= 10;
  mul = 10;

  byte * cnumber = malloc(sizeof(byte) * i--);

  for (int x = 0; x <= i; x++)
    *(cnumber + x) = 0x00;

  while (i--> p) {
    n = (number % mul);
    *(cnumber + i) = n / (mul / 10) + 0x30;
    number -= n;
    mul *= 10;
  }

  if (! *cnumber)
    *cnumber = '-';

  return cnumber;
}

int main(int argc, char * argv[]) {
  char *number = itoa(12345),
       *negative_number = itoa(-12345);

  printf( "Number (positive):  %s\r\n"
          "Number (negative): %s\r\n", number, negative_number );

  free(number);
  free(negative_number);

  return 0;
}
