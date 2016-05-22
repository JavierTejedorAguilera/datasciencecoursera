library(data.table)

dt <- readRDS('dt.rds')

png(filename = 'plot1.png', width = 480, height = 480)

hist(dt$Global_active_power, main='Global Active Power',
     xlab = 'Global Active Power (kilwatts)', col='red')

dev.off()
