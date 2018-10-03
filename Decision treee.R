install.packages("xlsx")
install.packages("tseries")
install.packages("forecast")
install.packages("MASS")
install.packages("fUnitRoots")

################################## Loading Libraries ##########################3
library("xlsx")
library("tseries")
library("forecast")
library("MASS")
library("fUnitRoots")

###########Setting working directory#############

getwd()

path <- "D:/R Directory"

setwd(path)


####################Data Preparation#################################

air<- data.frame(AirPassengers)

class(air)

air_tc_train <- ts(air$AirPassengers, start = c(2005,1), end = c(2016,12), frequency = 12)

air_tc_train<-window(air_tc_train, 2005, c(2015, 12))
