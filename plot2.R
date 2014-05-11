setwd('/Users/Nan/Documents/GitRepo/ExData_Plotting1/')

dat <- read.table('household_power_consumption.txt',sep=';',header=T,nrows=1)
header <- names(dat)
dat <- read.table('household_power_consumption.txt',sep=';',header=F,skip=66637,nrows=2880)
names(dat) <- header

time <- strptime(paste(dat$Date,dat$Time),'%d/%m/%Y %H:%M:%S')

png(filename='plot2.png',width=480,height=480)
plot(time,dat$Global_active_power,type='l',ylab='Global Active Power (kilowatts)',xlab='')
dev.off()


