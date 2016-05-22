library(data.table)

dt <- readRDS('dt.rds')

png(filename = 'plot3.png', width = 480, height = 480)

plot(dt$Sub_metering_1, type='l', ylab = 'Energy sub metering')
lines(dt$Sub_metering_2, type='l', col = 'red')
lines(dt$Sub_metering_3, type='l', col = 'blue')
legend('topright', legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),
       pch=20, col = c('black','red', 'blue'))

dev.off()

