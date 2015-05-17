library(data.table)
power<-fread("./household_power_consumption.txt")
hp<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")  ###hp is the wanted data###

###plot sub_metering_1 first###
plot(hp$Sub_metering_1,type="l",xaxt="n",ylab="Energy sub metering",xlab="")
Thu<-subset(hp,Date=="1/2/2007")
n1<-nrow(Thu);n<-nrow(hp)
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat"))##reset the x axis##

###add sub_metering_2 and sub_metering_3###
lines(hp$Sub_metering_2,type="l",col="red")
lines(hp$Sub_metering_3,type="l",col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=c(1,1,1),
       col=c("black","red","blue"),cex=0.7) ##set the legend##

png(filename="plot3.png",width=480,height=480)
dev.off()
