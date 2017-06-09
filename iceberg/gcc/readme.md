This attempt uses the following modules

```
module load mpi/gcc/openmpi/1.10.1
module load apps/R/3.3.1
```

Rmpi was installed from within R with

```
install.packages('Rmpi',configure.args = c("--with-Rmpi-include=/usr/local/mpi/gcc/openmpi/1.10.1/include/",
 "--with-Rmpi-libpath=/usr/local/mpi/gcc/openmpi/1.10.1/lib/",
"--with-Rmpi-type=OPENMPI"))
```

