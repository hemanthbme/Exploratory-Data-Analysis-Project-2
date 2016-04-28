## finding the source type of the pollutant from coal cobustion in SCC file
SCC.coal = SCC[grepl("coal", SCC$Short.Name, ignore.case=TRUE),]

## merging the above data with NEI
merge <- merge(x=NEI, y=SCC.coal, by='SCC')

## finding the year-wise total emiision due to coal relation  pollution
d<-tapply(merge$Emissions, merge$year, sum)

png(file="Result/plot4.png")
barplot(d, main="Emission level due to coal combustion from 1999-2008", xlab="Year" , ylab="pm2.5 Emission")
dev.off()

