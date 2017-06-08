This attempt uses the following modules

```
module load apps/R/3.4.0/intel-17.0-sequential
module load mpi/openmpi/2.0.1/intel-17.0.0
```

Rmpi was installed from within R with 

```
install.packages('Rmpi',configure.args = c("--with-Rmpi-include=/usr/local/packages/mpi/openmpi/2.0.1/intel-17.0.0/include/",
 "--with-Rmpi-libpath=/usr/local/packages/mpi/openmpi/2.0.1/intel-17.0.0/lib",
"--with-Rmpi-type=OPENMPI")
```

Submitting the job results in errors. Here is the .e stream

```
[sharc-node122.shef.ac.uk:30958] PSM2 returned unhandled/unknown connect error: Operation timed out
[sharc-node122.shef.ac.uk:30958] PSM2 EP connect error (unknown connect error):
[sharc-node122.shef.ac.uk:30958]  sharc-node122
[sharc-node122.shef.ac.uk:30958] 
[sharc-node122.shef.ac.uk:30958] [[28500,2],0] ORTE_ERROR_LOG: Error in file dpm/dpm.c at line 426
[sharc-node122.shef.ac.uk:30960] PSM2 returned unhandled/unknown connect error: Operation timed out
[sharc-node122.shef.ac.uk:30960] PSM2 EP connect error (unknown connect error):
[sharc-node122.shef.ac.uk:30960]  sharc-node122
[sharc-node122.shef.ac.uk:30960] 
[sharc-node122.shef.ac.uk:30960] [[28500,2],1] ORTE_ERROR_LOG: Error in file dpm/dpm.c at line 426
[sharc-node122.shef.ac.uk:30942] 1 more process has sent help message help-mpi-runtime.txt / mpi_init:startup:internal-failure
[sharc-node122.shef.ac.uk:30942] Set MCA parameter "orte_base_help_aggregate" to 0 to see all help / error messages
```

Here is the .o stream

```
--------------------------------------------------------------------------
It looks like MPI_INIT failed for some reason; your parallel process is
likely to abort.  There are many reasons that a parallel process can
fail during MPI_INIT; some of which are due to configuration or environment
problems.  This failure appears to be an internal failure; here's some
additional information (which may only be relevant to an Open MPI
developer):

  ompi_dpm_dyn_init() failed
  --> Returned "Error" (-1) instead of "Success" (0)
--------------------------------------------------------------------------
```
