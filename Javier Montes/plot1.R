raw_data <- read.csv("C:/Users/aname/ExData_Plotting1/household_power_consumption.txt", sep=";")
data<-rbind(subset(raw_data, raw_data$Date=="1/2/2007"),subset(raw_data, raw_data$Date=="2/2/2007"))
head(data)
names<-colnames(data)
data2<-cbind(strptime(paste(data$Date,data$Time),"%d/%m/%Y%H:%M:%S"),data)
colnames(data2)<-c("Date_time",names)
data2[,4:10]<-lapply(data2[,4:10],as.numeric)
lapply(data2,class)






with(data2,hist(Global_active_power,col="red",xlab="Global Active Power (Kilowatts)",main="Global Active Power"))
dev.copy(png,file="plot1.png",width = 480, height = 480)
dev.off()

