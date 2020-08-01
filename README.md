# Exploratory_Data_Analisys

The exploratory data analysis was performed with the data from Electric power consumption, the data can be downloaded from the following link:

https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip

Prerequisites:
- install.packages("tidyr")
- library(tidyr)
- library(dplyr)

Claculating memory requirements

We load the data in the hepc variable, extract the days 1/2/2007 and 2/2/2007, with which we will work later.

 I formed a single column with the columns Date and Time which I called date_time,
I later changed it from character format to date/time with the as.POSIXct() function.

Later I changed the format of all other columns with the help of the sapplay() function to numerical type.

I proceeded to make the corresponding graphics with the following functions:

- hist()
- with()
- plot()
- points()
- legend()
- par()

Finally, with the dev.copy() function, a .png file was created for the visualization of the graphics and closed with dev.off().

