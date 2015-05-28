if(!file.exists("./data")){dir.create("./data")}
fileUrl<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Fss06hid.csv"
download.file(fileUrl,destfile="./data/getdata06hid.csv",method="curl")
data<-read.csv("./data/getdata06hid.csv")
install.packages("dplyr")
library(dplyr)
head(data[which(data$ACR >=3 & data$AGS >=6),],n=3)