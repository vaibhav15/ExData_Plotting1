 data <- read.table("household_power_consumption.txt", sep = ";" , col.names = c("Date" , "Time" , "Global_active_power" , "Global_reactive_power" , "Voltage" , "Global_intensity" , "Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3"))


plot(data$Time,data$Sub_metering_1 , xlab="time ", ylab="energy submetering " )
lines(data$Time,data$Sub_metering_2,col="green")
lines(data$Time,data$Sub_metering_3,col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty= c(1,1), lwd = c(2.5,2.5),col=c("black", "green","blue"))




png(file = "plot3.png")
plot(data$Time,data$Sub_metering_1 , xlab="time ", ylab="energy submetering " )
lines(data$Time,data$Sub_metering_2,col="green")
lines(data$Time,data$Sub_metering_3,col="blue")
legend("topright",c("sub_metering_1","sub_metering_2","sub_metering_3"),lty= c(1,1), lwd = c(2.5,2.5),col=c("black", "green","blue"))
dev.off()

