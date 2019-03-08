CFLAGS = -Wall -O3 -ffast-math -mavx2 -fopenmp
LDFLAGS = -fopenmp
CC = cc


all:	cpi_openmp cpi_mpi

cpi_openmp		: cpi_openmp.o gettime.o

cpi_openmp.o 	: cpi_openmp.c gettime.h

gettime.o 		: gettime.c gettime.h


cpi_mpi			: cpi_mpi.o gettime.o

cpi_mpi.o 		: cpi_mpi.c gettime.h


clean:
		rm -f cpi_openmp cpi_mpi cpi_openmp.o cpi_mpi.o gettime.o



