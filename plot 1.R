setwd("C:/Users/psingh2424/Desktop/R")
my_data <- read.csv("household_power_consumption.csv")
my_data$Date <- as.Date(my_data$Date, format = "%d/%m/%y")
my_data$Global_active_power <- as.numeric(my_data$Global_active_power)
hist(my_data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")

png(filename="C:/Users/psingh2424/Desktop/R/plot1.png") 
hist(my_data$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)")
dev.off()
