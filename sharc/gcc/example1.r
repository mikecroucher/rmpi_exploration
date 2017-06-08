library(Rmpi)
library(snow)

cl <- makeCluster(2, type = "MPI") 
stopCluster(cl)
