read_data <- function(){
  if(!file.exists("household_power_consumption.txt"))
  {
    unzip("exdata-data-household_power_consumption.zip")
  }
  
  household_data<-read.table("household_power_consumption.txt", header = TRUE, sep = ";")
  
  household_data$Date <- as.Date(household_data$Date, format = "%d/%m/%Y")
  
  hh_data <- household_data[(household_data$Date == "2007-02-01") | (household_data$Date == "2007-02-02"), ]
  
  hh_data$Global_active_power <- as.numeric(as.character(hh_data$Global_active_power))
  
  hh_data <- transform(hh_data, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")  
  
  hh_data$Global_reactive_power <- as.numeric(as.character(hh_data$Global_reactive_power))
  hh_data$Voltage <- as.numeric(as.character(hh_data$Voltage))
  
  hh_data$Sub_metering_1 <- as.numeric(as.character(hh_data$Sub_metering_1))
  hh_data$Sub_metering_2 <- as.numeric(as.character(hh_data$Sub_metering_2))
  hh_data$Sub_metering_3 <- as.numeric(as.character(hh_data$Sub_metering_3))
  
  hh_data
  
}