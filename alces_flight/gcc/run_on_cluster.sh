#!/bin/bash -l
#$ -cwd
#$ -pe mpislots 2

module load apps/R/3.3.2/gcc-4.8.5+lapack-3.5.0+blas-3.6.0
module load mpi/mpich2/1.5/gcc-4.8.5

mpirun -np 1 R CMD BATCH ./example1.r ./out.txt

