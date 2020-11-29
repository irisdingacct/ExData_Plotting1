
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)

a <- powerdata[66637:69516, ]

x <- a$Global_active_power
y <- a$Global_intensity
x <- as.numeric(x)
y <- as.numeric(y)

date1 <- weekdays(as.Date(a$Date, "%d/%m/%Y"))

######2. PLOT 2
plot(x, type = "l", xlab = "Weekday", ylab = "Gloabl Active Power (kilowatts)", xaxt = "n")
axis(side=1, at = c(0, 1441, 2880), labels = c("Thursday", "Friday", "Saturday"))
dev.copy(png, file = "plot2.png")

dev.off()






