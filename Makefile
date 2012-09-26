# General test makefile for multi-target test
# General definitions

CC = gcc
CFLAGS = -Wall -g -fpic

MAIN = main.o libmalloc.a
MALLOC = malloc.o

default: main
     
main: main.o libmalloc.a 
	$(CC) main.o libmalloc.a -o main

malloc: $(MALLOC) 
	$(CC) $(MALLOC) -o malloc

libmalloc.a: malloc.o
	ar r libmalloc.a malloc.o

malloc.o: malloc.c
	$(CC) $(CFLAGS) -c malloc.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean: 
	rm -f main libmalloc.a *.o

  
# Header file interdependencies
%.c: %.h
	touch $@

