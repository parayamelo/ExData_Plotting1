load_data <- function(file) { 

# Read data into a table with appropriate classes
power.data <- read.table(file, header=TRUE,
                       sep=';', na.strings='?',
                       colClasses=c(rep('character', 2), 
                           rep('numeric', 7)))
    
# Convert dates and times
power.data$Date <- dmy(power.data$Date)
power.data$Time <- hms(power.data$Time)
    
# We select data to be used
start <- ymd('2007-02-01')
end <- ymd('2007-02-02')
power.data <- subset(power.data, year(Date) == 2007 & 
                       month(Date) == 2 &
                           (day(Date) == 1 | day(Date) == 2))
    
# Combine date and time
power.data$date.time <- power.data$Date + power.data$Time

return(power.data)
}
