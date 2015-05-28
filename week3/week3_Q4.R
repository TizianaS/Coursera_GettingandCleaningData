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
datasel1<-filter(datamergarr,Income.Group=="High income: OECD")
datasel2<-filter(datamergarr,Income.Group=="High income: nonOECD")
ans1<-mean(datasel1$V2)
ans1
ans2<-mean(datasel2$V2)
ans2