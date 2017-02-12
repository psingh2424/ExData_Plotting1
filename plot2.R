# Beginning of Plot 2
setwd("C:/Users/psingh2424/Desktop/R")
my_data <- read.csv("household_power_consumption.csv")
plot(as.POSIXct(paste(my_data$Date, my_data$Time), format="%d/%m/%Y %H:%M:%S"), my_data$Sub_metering_1, type="l", ylab = "Global Active Power (kilowats)", xlab = "")

png(filename="C:/Users/psingh2424/Desktop/R/plot2.png", width = 480, height = 480) 
plot(as.POSIXct(paste(my_data$Date, my_data$Time), format="%d/%m/%Y %H:%M:%S"), my_data$Sub_metering_1, type="l", ylab = "Global Active Power (kilowats)", xlab = "")
dev.off()