library(lubridate)
source('load_data.R')

# We first load the data
file = 'household_power_consumption.txt'
data = load_data(file)

# PNG device
png(filename='plot1.png')

# Make plot
hist(data$Global_active_power, main='Global Active Power', 
     xlab='Global Active Power (kilowatts)', col='red')

# Turn off device
dev.off()
