CC=gcc
CFLAGS=-Wall -g
PHONY=all clean
PROGS=isort #add txtfind

.PHONY: $(PHONY)

all: $(PROGS)

isort: sortingMain.o sorting.o
	$(CC) $(CFLAGS) sortingMain.o sorting.o -o sortingMain

sortingMain.o: sorting.h sortingMain.c
	$(CC) $(CFLAGS) -c sortingMain.c

sorting.o: sorting.h sorting.c
	$(CC) $(CFLAGS) -c sorting.c

clean:
	rm -f *.o $(PROGS)