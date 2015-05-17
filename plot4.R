library(data.table)
power<-fread("./household_power_consumption.txt") 
hp<-subset(power,Date=="1/2/2007"|Date=="2/2/2007") ###hp is the wanted data###

par(mfcol=c(2,2))
###plot on the topleft###
plot(hp$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xaxt="n",xlab="")
Thu<-subset(hp,Date=="1/2/2007")
n1<-nrow(Thu);n<-nrow(hp)
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat"))

###plot on the bottomeft###
plot(hp$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",xlab="")
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat"))
lines(hp$Sub_metering_2,type="l",col="red")
lines(hp$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),
       col=c("black","red","blue"),cex=0.1,bty="n")

###plot on the topright###
plot(hp$Voltage,type="l",xaxt="n",xlab="datetime",ylab="Voltage")
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat"))

###plot on the bottomright###
plot(hp$Global_reactive_power,type="l",xaxt="n",xlab="datetime",ylab="Global_reactive_power")
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat"))

png(filename="plot4.png",width=480,height=480)
dev.off()
