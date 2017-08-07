setwd("C:/Users/wye/Desktop/Work/R/R_Dataset")
RawData <- read.table("diabetes.data",sep = ",",header=FALSE)

responseY <- RawData[,dim(RawData)[2]]
predictorX <- RawData[,1:(dim(RawData)[2]-1)]


library(cluster)
agn <- agnes(x=predictorX[1:100,], diss = FALSE, stand = TRUE, 
             method = "average")
DendAgn <- as.dendrogram(agn)
plot(DendAgn)
