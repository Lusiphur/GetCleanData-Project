setwd("/Users/frankburns/getcleandata")
library(data.table)
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06pid.csv"
download.file(fileUrl, destfile = "/Users/frankburns/getcleandata/Week 1/idaho.csv", method = "curl")
DT <- fread("/Users/frankburns/getcleandata/Week 1/idaho.csv")
# check output and then system.time to see run time - this one was the fastest
system.time(DT[,mean(pwgtp15),by=SEX])