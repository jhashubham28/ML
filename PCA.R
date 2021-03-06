# mydata<-read.csv("C:/Users/Admin/Desktop/pca_gsp.csv")
mydata<-read.csv("C:/Users/Deepak/Desktop/CL-VII/pca_gsp.csv")
attach(mydata)
names(mydata)
X <- cbind(Ag, Mining, Constr, Manuf, Manuf_nd, Transp, Comm, Energy, TradeW, TradeR, RE, Services, Govt)
summary(X)
cor(X)
pcal<-princomp(X, scores=TRUE, cor=TRUE)
summary(pcal)
loadings(pcal)
plot(pcal)
screeplot(pcal,type="line",main="Screen Plot")
biplot(pcal)
pcal$scores[1:10,]