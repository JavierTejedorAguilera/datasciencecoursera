library(data.table)

dt <- readRDS('dt.rds')

png(filename = 'plot4.png', width = 480, height = 480)

par(mfrow=c(2,2))

plot(dt$Global_active_power, type='l', ylab = 'Global Active Power (kilowatts)')

plot(dt$Voltage, type='l', ylab = 'Voltage', xlab='datetime')


plot(dt$Sub_metering_1, type='l', ylab = 'Energy sub metering')
lines(dt$Sub_metering_2, type='l', col = 'red')
lines(dt$Sub_metering_3, type='l', col = 'blue')
legend('topright', cex = 0.6,legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       pch=20, col = c('black','red', 'blue'))

plot(dt$Global_reactive_power, type='l', ylab = 'Global_reactive_power', xlab='datetime')

dev.off()

