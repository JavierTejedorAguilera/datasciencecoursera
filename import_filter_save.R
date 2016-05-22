library(data.table)

dt <- fread('household_power_consumption.txt',na.strings = '?')

str(dt)

head(dt)


dt[,Date := as.Date(Date,format='%d/%m/%Y')]

# Filtering: I take only observations from days 2007-02-01 to 2007-02-02
dt <- dt[Date>='2007-02-01' & Date<='2007-02-02',]


# Saving dt. Next time I only need to import this small dt.rds, not the complete dataset
saveRDS(object=dt,file = 'dt.rds')

