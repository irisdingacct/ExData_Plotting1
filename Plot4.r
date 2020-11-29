library(ggplot2)
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)
a <- powerdata[66637:69516, ]
x <- a$Global_active_power
x <- as.numeric(x)
y <- a$Global_intensity
y <- as.numeric(y)
v <- a$Voltage
v <- as.numeric(v)

s1 <- a$Sub_metering_1
s1 <- as.numeric(s1)
s2 <- a$Sub_metering_2
s2 <- as.numeric(s2)
s3 <- a$Sub_metering_3
s3 <- as.numeric(s3)

gr <- a$Global_reactive_power
gr <- as.numeric(gr)

date1 <- weekdays(as.Date(a$Date, "%d/%m/%Y"))
par(mfrow = c(2, 2))
#first plot
plot(x, type = "l", xlab = "Weekday", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))

#second plot
plot(v, type = "l", xlab = "datetime", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))

#Third plot
plot(s1, type = "l", xlab = "weekday", ylab = "Energy sub metering", xaxt = "n")
lines(s2, col = "red")
lines(s3, col = "blue")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))

#Fourth plot
plot(gr, type = "l", xlab = "datetime", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))
