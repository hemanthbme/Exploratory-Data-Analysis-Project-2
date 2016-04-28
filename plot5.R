## subsetting the baltimore accroding to the source type on-road
balti.road<-subset(baltimore, type=="ON-ROAD")

## creating the plot
png(file="Result/plot5.png")
e<-tapply(balti.road$Emissions, balti.road$year, sum)
barplot(e, main="Motor vehicle pm2.5 emission rate from 1999 to 2008", xlab="Year", ylab="PM2.5 Emission level")
dev.off()