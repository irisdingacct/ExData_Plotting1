
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)

a <- powerdata[66637:69516, ]

x <- a$Global_active_power
y <- a$Global_intensity

##time <- strptime(a$Time, )
date1 <- weekdays(as.Date(a$Date, "%d/%m/%Y"))


x <- as.numeric(x)
y <- as.numeric(y)

######1. PLOT 1
hist(x, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.copy(png, file = "plot1.png")

######2. PLOT 2
plot(x, type = "l", xlab = "Weekday", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, file = "plot2.png")

######3. PLOT 3
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)
a <- powerdata[66637:69516, ]

s1 <- a$Sub_metering_1
s1 <- as.numeric(s1)
s2 <- a$Sub_metering_2
s2 <- as.numeric(s2)
s3 <- a$Sub_metering_3
s3 <- as.numeric(s3)

plot(s1, type = "l", xlab = "weekday", ylab = "Energy sub metering", xaxt = "n")
lines(s2, col = "red")
lines(s3, col = "blue")

axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, file = "plot3.png")

######4. PLOT 4
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)
a <- powerdata[66637:69516, ]
x <- a$Global_active_power
y <- a$Global_intensity

par(mfrow = c(2, 2))
plot(x, type = "l", xlab = "Weekday", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))

v <- a$Voltage
gr <- a$Global_reactive_power
gr <- as.numeric(gr)

dev.off()




