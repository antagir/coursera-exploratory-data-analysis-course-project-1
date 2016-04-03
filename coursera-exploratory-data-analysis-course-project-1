
#####Data Loading and Preprocessing#####

> if(!file.exists('data.zip')){
+     url<-"http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip"
+ 
+     download.file(url,destfile = "data.zip")
+ }
trying URL 'http://archive.ics.uci.edu/ml/machine-learning-databases/00235/household_power_consumption.zip'
Content type 'application/zip' length 20640916 bytes (19.7 MB)
downloaded 19.7 MB

> unzip("data.zip")
> data<-read.table("household_power_consumption.txt",header = TRUE, sep= ";")
> names(data)
[1] "Date"                  "Time"                  "Global_active_power"  
[4] "Global_reactive_power" "Voltage"               "Global_intensity"     
[7] "Sub_metering_1"        "Sub_metering_2"        "Sub_metering_3"       
> lapply(data, class)
$Date
[1] "factor"

$Time
[1] "factor"

$Global_active_power
[1] "factor"

$Global_reactive_power
[1] "factor"

$Voltage
[1] "factor"

$Global_intensity
[1] "factor"

$Sub_metering_1
[1] "factor"

$Sub_metering_2
[1] "factor"

$Sub_metering_3
[1] "numeric"

> data$Date[1:10]
 [1] 16/12/2006 16/12/2006 16/12/2006 16/12/2006 16/12/2006 16/12/2006
 [7] 16/12/2006 16/12/2006 16/12/2006 16/12/2006
1442 Levels: 1/1/2007 1/1/2008 1/1/2009 1/1/2010 1/10/2007 ... 9/9/2010
> data$time[1:10]
NULL
> data$Time[1:10]
 [1] 17:24:00 17:25:00 17:26:00 17:27:00 17:28:00 17:29:00 17:30:00 17:31:00
 [9] 17:32:00 17:33:00
1440 Levels: 00:00:00 00:01:00 00:02:00 00:03:00 00:04:00 00:05:00 ... 23:59:00
> data$DateTime<-paste(data$Date, data$Time)
> data$DateTime<-strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
> start<-which(data$DateTime==strptime("2007-02-01", "%Y-%m-%d"))
> end<-which(data$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))
> 
> data2<-data[start:end,]

#####Create the plots#####

###1st plot###
> hist(as.numeric(as.character(data2$Global_active_power)), # note we used as.character and as numeric since
+                                                           # the variable is factor variable.
+                 main="Global Active Power",
+                 xlab="Global Active Power (kilowatts)", col="red")

###2nd plot ###
> plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),
+       type='l',ylab="Global Active Power (Kilowatts)", xlab="")

###3rd plot ###
> plot(data2$DateTime, as.numeric(as.character(data2$Sub_metering_1)),type='l', 
+      ylab ="Energy sub metering", xlab="")
>  lines(data2$DateTime, as.numeric(as.character(data2$Sub_metering_2)),type='l', col='red')
>  lines(data2$DateTime, data2$Sub_metering_3,type='l', col="blue")
>   legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
+                     lty=c(1,1,1)
+                     ,col=c("black","red","blue"))

###4th plot ####
par(mfcol=c(2,2))
plot(data2$DateTime, as.numeric(as.character(data2$Global_active_power)),type='l',ylab="Global Active Power", xlab="")
plot(data2$DateTime, as.numeric(as.character(data2$Sub_metering_1)),type='l', xlab="",ylab ="Energy sub metering")
 lines(data2$DateTime, as.numeric(as.character(data2$Sub_metering_2)),type='l', col='red')
 lines(data2$DateTime, data2$Sub_metering_3,type='l', col="blue")
  legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
                    lty=c(1,1,1),col=c("black","red","blue"))

plot(data2$DateTime, as.numeric(as.character(data2$Voltage)),type='l', 
    ylab="Voltage",xlab="datetime" )

plot(data2$DateTime, as.numeric(as.character(data2$Global_reactive_power)),type='l', 
    ylab="Global_reactive_power",xlab="datetime" )
