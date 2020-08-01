install.packages("tidyr")
library(tidyr)
library(dplyr)

#Claculating memory requeriments 

((2075259*9*8)/2^20)/2^10

# download dataset
hepc <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", header = TRUE, sep = ";",
                   stringsAsFactors = FALSE)

str(hepc2)

# I have selected to days 
p <- hepc %>% 
  filter(Date == "1/2/2007")
q <- hepc %>%
  filter(Date == "2/2/2007")
dt <- rbind(p,q)

#dt[1] <- as.Date(dt$Date, format ="%d/%m/%Y")

hepc2 <- unite(dt, date_time, c(1,2), sep = " ")

fh2=as.POSIXct(hepc2$date_time,format="%d/%m/%Y %H:%M:%S")

hepc2[1] <- as.POSIXct(hepc2$date_time,format="%d/%m/%Y %H:%M:%S")

hepc2[2] <- as.numeric(hepc2$Global_active_power)
hepc2[3] <- as.numeric(hepc2$Global_reactive_power)

hepc2[, 4:8] <- sapply(hepc2[, 4:8], as.numeric)

plot(hepc2$date_time, hepc2$Global_active_power, type = "l",
     ylab = "Global Active Power (kilowatts)",
     xlab = ""
)

dev.copy(png, file = "plot2.png")

dev.off()
