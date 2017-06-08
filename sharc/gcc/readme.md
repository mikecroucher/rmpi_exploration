This attempt uses the following modules

```
module load apps/R/3.4.0/gcc-4.8.5
module load dev/gcc/4.9.4                 
module load mpi/openmpi/2.0.1/gcc-4.9.4
```

Rmpi was installed from within R with

```
install.packages('Rmpi',configure.args = c("--with-Rmpi-include=/usr/local/packages/mpi/openmpi/2.0.1/gcc-4.9.4/include/",
 "--with-Rmpi-libpath=/usr/local/packages/mpi/openmpi/2.0.1/gcc-4.9.4/lib/",
"--with-Rmpi-type=OPENMPI"))
```

Submitting the job results in a crash
