Data_Cocoa <- read.csv(file="C:/Users/ARDIA REGITA SAFITRI/Documents/DataProject-0/UNdata_Export.csv", header=TRUE, sep=",")
str(Data_Cocoa)
library(ggplot2)
#Data_Cocoa[!complete.cases(Data_Cocoa),]
Data_Cocoa$Qty_Tons <- round(Data_Cocoa$Quantity/1000, 1)
#year <- Data_cocoa$Year 
Price_Tons <- Data_Cocoa$Trade..USD./Data_Cocoa$Qty_Tons
View(Data_Cocoa)
Import_CC <- subset(Data_Cocoa, Flow == c("Import", "Re-Import"))
Export_CC <- subset(Data_Cocoa, Flow == "Export")
by(Data_Cocoa, Data_Cocoa$Commodity, function(x) {
  jumlah <- sum(x$Trade..USD.)
})
#Commodity_beans <- subset(Data_Cocoa, Commodity == c("Chocolate and other food preps containing cocoa > 2 k") )
#beans <- filter(year, Commodity == c("Chocolate and other food preps containing cocoa > 2 k", "Cocoa beans, whole or broken, raw or roasted"))
#Price_Tons_Beans <- filter(Price_Tons, Commodity == c("Chocolate and other food preps containing cocoa > 2 k", "Cocoa beans, whole or broken, raw or roasted"))
#qplot(Year, Price_Tons, data = Data_Cocoa$Commodity = c("Chocolate and other food preps containing cocoa > 2 k", "Cocoa beans, whole or broken, raw or roasted"))
