setwd('/Users/Nan/Documents/GitRepo/ExData_Plotting1/')

dat <- read.table('household_power_consumption.txt',sep=';',header=T,nrows=1)
header <- names(dat)
dat <- read.table('household_power_consumption.txt',sep=';',header=F,skip=66637,nrows=2880)
names(dat) <- header

time <- strptime(paste(dat$Date,dat$Time),'%d/%m/%Y %H:%M:%S')

png(filename='plot4.png',width=480,height=480)
par(mfrow=c(2,2))
#plot1
plot(time,dat$Global_active_power,type='l',ylab='Global Active Power',xlab='')

#plot2
plot(time,dat$Voltage,type='l',ylab='Voltage',xlab='')

#plot3
plot(time,dat$Sub_metering_1,type='l',ylab='Energy sub metering',xlab='')
lines(time,dat$Sub_metering_2,type='l',col='red')
lines(time,dat$Sub_metering_3,type='l',col='blue')
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c('black','red','blue'),lty=1)

#plot4
plot(time,dat$Global_reactive_power,type='l',ylab='Global Reactive Power',xlab='')
dev.off()

