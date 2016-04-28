## ggplot of baltimore data and source type 
png(file="Result/plot3.png")
ggplot(baltimore,aes(factor(year),Emissions,fill=type)) +
geom_bar(stat="identity") +
theme_bw() + guides(fill=FALSE)+
facet_grid(.~type,scales = "free",space="free") + 
labs(x="year", y=expression("PM 2.5 Emission level")) + 
labs(title=expression("Baltimore source type data 1999-2008"))
dev.off()
