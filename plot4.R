data <- read.table("household_power_consumption.txt", sep = ";" , col.names = c("Date" , "Time" , "Global_active_power" , "Global_reactive_power" , "Voltage" , "Global_intensity" , "Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3"))

par(mfrow=c(2,2))


plot(data$Time,data$Global_active_power , xlab="time ", ylab="global active power " )

plot(data$Time,data$Voltage , xlab="time ", ylab="Voltage " )

plot(data$Time,data$Sub_metering_1 , xlab="time ", ylab="energy submetering " )
lines(data$Time,data$Sub_metering_2,col="green")
lines(data$Time,data$Sub_metering_3,col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty= c(1,1), lwd = c(2.5,2.5),col=c("black", "green","blue"))


plot(data$Time,data$Global_reactive_power, xlab="time ", ylab="Global reactive power " )



png(file = "plot4.png")
par(mfrow=c(2,2))
 
 
plot(data$Time,data$Global_active_power , xlab="time ", ylab="global active power " )
 
plot(data$Time,data$Voltage , xlab="time ", ylab="Voltage " )
 
plot(data$Time,data$Sub_metering_1 , xlab="time ", ylab="energy submetering " )
lines(data$Time,data$Sub_metering_2,col="green")
lines(data$Time,data$Sub_metering_3,col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty= c(1,1), lwd = c(2.5,2.5),col=c("black", "green","blue"))
 
 
plot(data$Time,data$Global_reactive_power, xlab="time ", ylab="Global reactive power " )
dev.off()




