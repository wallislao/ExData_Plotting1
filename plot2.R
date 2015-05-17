library(data.table)
power<-fread("./household_power_consumption.txt")
hp<-subset(power,Date=="1/2/2007"|Date=="2/2/2007")  ###hp is the wanted data###

plot(hp$Global_active_power,type="l",ylab="Global Active Power(kilowatts)",xaxt="n",xlab="")
Thu<-subset(hp,Date=="1/2/2007")
n1<-nrow(Thu);n<-nrow(hp)
axis(side=1,at=c(1,n1+1,n),labels=c("Thu","Fri","Sat")) ##reset the x axis##

png(filename="plot2.png",width=480,height=480)
dev.off()
