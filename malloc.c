#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>


void *malloc(size_t size)
{

  void *p;
  
  p = sbrk(0);
  
  printf("hello world\n");

  
  return p;
}