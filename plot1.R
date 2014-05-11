setwd('/Users/Nan/Documents/GitRepo/ExData_Plotting1/')

dat <- read.table('household_power_consumption.txt',sep=';',header=T,nrows=1)
header <- names(dat)
dat <- read.table('household_power_consumption.txt',sep=';',header=F,skip=66637,nrows=2880)
names(dat) <- header

png(filename='plot1.png',width=480,height=480)
hist(dat$Global_active_power,xlab='Global Active Power (kilowatts)',main='Global Active Power',col='red')
dev.off()
