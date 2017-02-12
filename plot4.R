setwd("C:/Users/psingh2424/Desktop/R")
my_data <- read.csv("household_power_consumption.csv")
my_dataDateTime <- as.POSIXct(paste(my_data$Date, my_data$Time), format="%d/%m/%Y %H:%M:%S")

png(filename="C:/Users/psingh2424/Desktop/R/plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2), mar = c(5, 4, 2, 1))
plot(my_dataDateTime, my_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
plot(my_dataDateTime, my_data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")
plot(my_dataDateTime, my_data$Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
points(my_dataDateTime, my_data$Sub_metering_2, col = "red", type = "l")
points(my_dataDateTime, my_data$Sub_metering_3, col = "blue", type = "l")
legend("topright", pch = 1, col = c("black", "blue", "red"), legend = c("Sub_Metering_1", "Sub_Metering_2", "Sub_Metering_3"))

plot(my_dataDateTime, my_data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()