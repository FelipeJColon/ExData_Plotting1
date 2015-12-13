## ##################################################################################
##
## Exploratory Data Analysis - Course Project I
##
## ##################################################################################
##
## DISCLAIMER: 
## This script has been developed for study purposes only. 
## The script is provided without any warranty of any kind, either express or implied. 
## The entire risk arising out of the use or performance of the sample script and 
## documentation remains with you. 
## In no event shall the author be liable for any damages whatsoever (including, 
## without limitation, damages for loss of business profits, business interruption, 
## loss of business information, or other pecuniary loss) arising out of the use of  
## or inability to use the sample scripts or documentation, even if the author has 
## been advised of the possibility of such damages. 
##
## ##################################################################################
##
## Version: 1
## Created on: 13 Dec 2015
##
## Written by: Felipe J Colón-González
## 
## ##################################################################################

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
png(filename=file.path(dir,"plot1.png"),
    width=480,height=480,units="px",
    bg="white")

# Plot 
hist(data[,"Global_active_power"],breaks=15,col=2,
     xlab="Global Active Power (kilowatts)",
     main="Global Active Power")

# Close graphic device
dev.off()


# End of file
