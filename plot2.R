## Creating baltimore city data
baltimoredata<-NEI$fips=="24510"
baltimore<-NEI[baltimoredata,]

## Creating the plot for question no 2
png(file="Result/myplot2.png")
b<-tapply(baltimore$Emissions, baltimore$year, sum)
barplot(b, main="Baltimore city pm2.5 Data", xlab="Year", ylab="Emission of pm2.5")
dev.off()