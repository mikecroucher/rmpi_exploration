This attempt uses the following modules

```
module load apps/R/3.3.2/gcc-4.8.5+lapack-3.5.0+blas-3.6.0
module load mpi/mpich2/1.5/gcc-4.8.5
```

Rmpi was installed from within R with

```
install.packages('Rmpi',configure.args = c("--with-Rmpi-include=/opt/gridware/depots/361a89f9/el7/pkg/mpi/mpich2/1.5/gcc-4.8.5/include/",
 "--with-Rmpi-libpath=/opt/gridware/depots/361a89f9/el7/pkg/mpi/mpich2/1.5/gcc-4.8.5/lib/",
"--with-Rmpi-type=MPICH2"))
```

