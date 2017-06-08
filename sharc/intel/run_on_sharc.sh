#!/bin/bash
#$ -pe mpi 4
#$ -P rse
module load apps/R/3.4.0/intel-17.0-sequential
module load mpi/openmpi/2.0.1/intel-17.0.0
mpirun -np 1 Rscript example1.r


