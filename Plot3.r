
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)

a <- powerdata[66637:69516, ]

##time <- strptime(a$Time, )
date1 <- weekdays(as.Date(a$Date, "%d/%m/%Y"))

######3. PLOT 3
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)
a <- powerdata[66637:69516, ]

#Plot sub metering 1
s1 <- a$Sub_metering_1
s1 <- as.numeric(s1)
plot(s1, type = "l", xlab = "weekday", ylab = "Energy sub metering", xaxt = "n")

#Plot sub metering 2
s2 <- a$Sub_metering_2
s2 <- as.numeric(s2)
lines(s2, col = "red")

#Plot sub metering 3
s3 <- a$Sub_metering_3
s3 <- as.numeric(s3)
lines(s3, col = "blue")

axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, file = "plot3.png")

dev.off()





