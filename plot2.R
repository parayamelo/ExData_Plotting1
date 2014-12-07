library(lubridate)
source('load_data.R')

# We first load the data
file = 'household_power_consumption.txt'
data = load_data(file)

# Png device
png(filename='plot2.png')

# Make plot
plot(data$date.time, data$Global_active_power,
     ylab='Global Active Power (kilowatts)', xlab='', type='l')

# Turn off device
dev.off()
