library(lubridate)
source('load_data.R')

# We first load the data
file = 'household_power_consumption.txt'
data = load_data(file)

# PNG device
png(filename='plot3.png')


# Make plot
plot(data$date.time, data$Sub_metering_1, type='l',
     xlab='', ylab='Energy sub metering')
lines(data$date.time, data$Sub_metering_2, col='red')
lines(data$date.time, data$Sub_metering_3, col='blue')
legend('topright', 
       legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'),
       col=c('black', 'red', 'blue'), 
       lty='solid')


# Turn off device
dev.off()
