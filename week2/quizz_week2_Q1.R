install.packages("jsonlite")
y<-GET("https://api.github.com/repos/jtleek/datasharing")
json1=content(y)
json2=jsonlite::fromJSON(toJSON(json1))
json2