## subsetting the baltimore accroding to the source type on-road
balti.road<-subset(baltimore, type=="ON-ROAD")
e<-tapply(balti.road$Emissions, balti.road$year, sum)

## sunsetting the los angeles data according to source type on-road
los.road<-subset(NEI, fips=="06037" & type=="ON-ROAD")
f<-tapply(los.road$Emissions, los.road$year, sum)

## Plotting the graph
png(file="Result/plot6.png")
par(mar=c(4,4,4,4),mfrow=c(1,2))
rnge<-range(e,f)
barplot(e, main="baltimore ON-ROAD (1999 - 2008)", xlab="Year", ylab="PM2.5 Emission level", ylim=rnge)
barplot(f, main="LA ON-ROAD (1999 - 2008)", xlab="Year", ylab="PM2.5 Emission level")
dev.off()