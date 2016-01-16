#calculating the mean of pollutant for the airquality datasets
pollutantmean <- function(directory, pollutant, id=1:332){
# 1. create a list of files
x<- list.files(directory, full.names=TRUE)
#2.reading the files and binding using rbind
fullspec <- data.frame()
for ( i in seq(1:332)) {
  fullspec<-rbind(fullspec, read.csv(x[i]))
  i = i+1}
#3.subsetting the required file and calculate its mean for  particular id
if (pollutant == 'nitrate'){
  nit <-subset(fullspec,fullspec$ID==id)
  mean(nit$nitrate,na.rm=TRUE)
}
else if (pollutant == 'sulfate'){
  sulf <- subset(fullspec, fullspec$ID == id)
  mean(sulf$sulfate,na.rm=TRUE)
}

poll <- function(pollutant){
  if (pollutant == 'nitrate'){
     nit <-subset(fullspec,fullspec$ID==id)
     mean(nit$nitrate,na.rm=TRUE)
}
else if (pollutant == 'sulfate'){
     sulf <- subset(fullspec, fullspec$ID == id)
     mean(sulf$sulfate,na.rm=TRUE)
}
