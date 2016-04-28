## Reading data into R
SCC<-readRDS("data/exdata-data-NEI_data/Source_Classification_Code.rds")
NEI<-readRDS("data/exdata-data-NEI_data/summarySCC_PM25.rds")

## plotting graph for question no 1 using tapply
a<-tapply(NEI$Emissions, INDEX=NEI$year, sum)
png(file="Result/myplot1.png")
barplot(a, main="Emission of pm2.5 from 1999 - 2008", xlab="Year", ylab="pm2.5 Emission")
dev.off()
