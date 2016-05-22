library(data.table)

dt <- readRDS('dt.rds')

png(filename = 'plot2.png', width = 480, height = 480)

plot(dt$Global_active_power, type='l', ylab = 'Global Active Power (kilowatts)')

dev.off()

