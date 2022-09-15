library(readr)
library(TTR)
library(quantmod)

av <- read_csv("AV.L.csv")
summary(av)
sum(is.na(av))

av$sma <- SMA(av[,"Close"], n=20)
av$bbands <- BBands( av[,c("High","Low","Close")] )

#test