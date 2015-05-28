if(!file.exists("./data")){dir.create("./data")}
fileUrl1<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FGDP.csv" 
fileUrl2<-"https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2FEDSTATS_Country.csv"
download.file(fileUrl1,destfile="./data/getdataFGDP.csv",method="curl")
download.file(fileUrl2,destfile="./data/getdataCountry.csv",method="curl")
data1<-read.csv("./data/getdataFGDP.csv", header=F, skip=5, nrows=190)
data2<-read.csv("./data/getdataCountry.csv")
install.packages("dplyr")
library(dplyr)
datamerged<-(data1,data1,by.x="V1",by.y="CountryCode")
datamergedarr<-arrange(datamerged,desc(V2))
ans1<-nrow(datamerged)
ans2<-datamergedarr$V4[13]