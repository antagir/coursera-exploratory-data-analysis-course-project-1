> plot(data2$DateTime, as.numeric(as.character(data2$Sub_metering_1)),type='l', 
+      ylab ="Energy sub metering", xlab="")
>  lines(data2$DateTime, as.numeric(as.character(data2$Sub_metering_2)),type='l', col='red')
>  lines(data2$DateTime, data2$Sub_metering_3,type='l', col="blue")
>   legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
+                     lty=c(1,1,1)
+                     ,col=c("black","red","blue"))
