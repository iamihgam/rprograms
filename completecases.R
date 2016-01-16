# calculating the count of complete cases in a dataset

complete <- function(directory,id=1:332){
  #creating a list of files
  x<- list.files(directory, full.names=TRUE)
  nobs <- vector()
  for (i in id){
    nobs[i] <- sum(complete.cases(read.csv(x[i]))) 
} 
 nobs <- nobs[id]
  result <- data.frame(id, nobs)
  return(result)
}
  # the other way of doing it.
  complete1 <- function(directory,id=1:332){
  #creating a list of files
  x<- list.files(directory, full.names=TRUE)
  # read the files and combining it.
  y <- lapply(x[1:332],read.csv)
  fullspec <- do.call(rbind, y)
  nobs <- vector()
  for (i in id){
    nobs[i] <- sum(complete.cases(fullspec[fullspec$ID == i,])) 
  } 
  nobs <- nobs[id]
  result <- data.frame(id, nobs)
  return(result)
}
