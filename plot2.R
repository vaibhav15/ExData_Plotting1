 data <- read.table("household_power_consumption.txt", sep = ";" , col.names = c("Date" , "Time" , "Global_active_power" , "Global_reactive_power" , "Voltage" , "Global_intensity" , "Sub_metering_1" , "Sub_metering_2" , "Sub_metering_3"))


plot(data$Time,data$Global_active_power , xlab="time ", ylab="global active power " )

png(file = "plot2.png")

plot(data$Time,data$Global_active_power , xlab="time ", ylab="global active power " )

dev.off()
