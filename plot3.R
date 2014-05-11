setwd('/Users/Nan/Documents/GitRepo/ExData_Plotting1/')

dat <- read.table('household_power_consumption.txt',sep=';',header=T,nrows=1)
header <- names(dat)
dat <- read.table('household_power_consumption.txt',sep=';',header=F,skip=66637,nrows=2880)
names(dat) <- header

time <- strptime(paste(dat$Date,dat$Time),'%d/%m/%Y %H:%M:%S')

png(filename='plot3.png',width=480,height=480)
plot(time,dat$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='')
lines(time,dat$Sub_metering_2,type='l',col='red')
lines(time,dat$Sub_metering_3,type='l',col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=1)
dev.off()

