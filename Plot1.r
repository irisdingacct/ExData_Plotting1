
install.packages("ggplot2")
library(ggplot2)

memory.limit()
memory.limit(size=4000) 
powerdata <- read.table("./power.txt", sep = ";", header = TRUE)

a <- powerdata[66637:69516, ]

x <- a$Global_active_power
y <- a$Global_intensity

x <- as.numeric(x)
y <- as.numeric(y)

date1 <- weekdays(as.Date(a$Date, "%d/%m/%Y"))


######1. PLOT 1
hist(x, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
dev.copy(png, file = "plot1.png")
dev.off()



