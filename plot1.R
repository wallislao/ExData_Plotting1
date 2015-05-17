library(data.table)
power<-fread("./household_power_consumption.txt")
as.Date(power$Date,"%d/%m/%y")
hp<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")  ###hp is the wanted data###

hist(as.numeric(hp$Global_active_power),col="red",main="Global Active Power",
     xlab="Global Active Power(kilowatts)")

###save as png###
png(filename="plot1.png",width=480,height=480)
dev.off()
