CFLAGS = -Wall -O3 -ffast-math -mavx2 -fopenmp
LDFLAGS = -fopenmp
CC = gcc


cpi			: cpi.o gettime.o

cpi.o 		: cpi.c gettime.h

gettime.o 	: gettime.c gettime.h

clean:
		rm -f cpi cpi.o gettime.o