library(lubridate)
source('load_data.R')

# We first load the data
file = 'household_power_consumption.txt'
data = load_data(file)

# PNG device
png(filename='plot4.png')

# Make plot - We have to plot 4 panels in one
par(mfrow=c(2,2))

# Top left
plot(data$date.time, data$Global_active_power,
     ylab='Global Active Power', xlab='', type='l')

# Top right
plot(data$date.time, data$Voltage,
     xlab='datetime', ylab='Voltage', type='l')

# Bottom left
plot(data$date.time, data$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(data$date.time, data$Sub_metering_2, col='red')
lines(data$date.time, data$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid', bty='n')

# Bottom right
plot(data$date.time, data$Global_reactive_power,
     xlab='datetime', ylab='Global_reactive_power', type='l')

# Turn off device
dev.off()
