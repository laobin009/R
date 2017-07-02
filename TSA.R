## CRTL + SHIFT + C to comment multiple lines
## use quantmod to extract data from Google Fiance
# library('quantmod')
# getSymbols('AMZN', src='google', from = as.Date("2011-01-01"), to = as.Date("2017-01-01"))
# Data <- AMZN[,4]
# head(Data, n = 10)

# use / in the file path instead of \ which will fail the import
Data <- read.csv(file = "C:/R-Python/Data.csv", sep = ",")
head(Data, n = 10)

library('rugarch')

acf(Data)

pacf(Data)

