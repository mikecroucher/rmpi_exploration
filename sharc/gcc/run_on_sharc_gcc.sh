#!/bin/bash
#$ -pe mpi 4
#$ -P rse

module load apps/R/3.4.0/gcc-4.8.5
module load dev/gcc/4.9.4                 
module load mpi/openmpi/2.0.1/gcc-4.9.4

mpirun -np 1 Rscript example1.r
#Rscript example1.r

