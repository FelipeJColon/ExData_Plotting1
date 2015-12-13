
# Load packages
require(dplyr)

# Set path to data
dir <- "~/Documents/GitHub/ExData_Plotting1/"
setwd(file.path(dir))

# Read data
data <- read.table(file.path(dir,'household_power_consumption.txt'),header=T,
                   sep=';',na.strings="?")

# Set date character as date object
data$Date <- as.Date(data$Date,"%d/%m/%Y")

# Filter dataset to period of interest
data <- filter(data, Date>='2007-02-01' & Date<='2007-02-02')
dim(data)

# Create output object
png(filename=file.path(dir,"plot2.png"),
    width=480,height=480,units="px",
    bg="white")

# Plot 
plot(data$Global_active_power, type='l',xlab="",
     ylab="Global Active Power (kilowatts)",
     axes=FALSE)
axis(2)
axis(1,at=c(0,1441,2881),labels=c("Thu","Fri","Sat"))
box()

# Close graphic device
dev.off()


# End of file