#!/bin/bash
#$ -pe openmpi-ib 4

module load mpi/gcc/openmpi/1.10.1
module load apps/R/3.3.1

mpirun -np 1 R CMD BATCH ./example1.r ./out.txt
