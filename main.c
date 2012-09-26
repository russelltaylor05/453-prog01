#include <string.h>
#include <stdlib.h>
#include <stdio.h>


int main(int argc, char *argv[]) {
  //char *s;
  size_t size = 4;
  //void *p;
  
  printf("Main Hello World\n");

  malloc(size);

  //s = strdup("Tryme"); /* will call malloc() implicitly */
  //puts(s);
  //free(s);
  return 0;
}