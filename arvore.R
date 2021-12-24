# canvas
plot(x = 1:10,
     y = 1:10,
     xlim=c(-5,5),
     ylim=c(0,10),
     type="n",
     xlab="",
     ylab="",
     xaxt="n",
     yaxt="n",
     main = "Happy Christmas")

# camadas da arvore
#camada 1
rect(-1,0,1,2,
     col="#522c06",
     border="#874605",
     lwd=7)

#camada 2
polygon(c(-5,0,5),
        c(2,4,2),
        col="palegreen3",
        border="palegreen4",
        lwd=7)

#camada 3
polygon(c(-4,0,4),
        c(3.5,5.5,3.5),
        col="palegreen4",
        border="palegreen3",
        lwd=7)

#camada 4
polygon(c(-3,0,3),
        c(5,6.5,5),
        col="palegreen3",
        border="palegreen4",
        lwd=7)

#camada 5
polygon(c(-2,0,2),
        c(6.25,7.5,6.25),
        col="palegreen4",
        border="palegreen3",
        lwd=7)

# adicionando as bolinhas e a estrela
points(x=runif(n = 6,
               min = -5,
               max = 5),
       y=rep(x = 2,
             times = 6),
       col=sample(c("#0073ff","#ff0008","#8400ff"),
                  size=4,
                  replace=T),
       cex=3,
       pch=19)

points(x=runif(n = 4,
               min = -4,
               max = 4),
       y=rep(3.5,4),
       col=sample(c("#0073ff","#ff0008","#8400ff"),
                  size=4,
                  replace=T),
       cex=3,
       pch=19)

points(x=runif(n = 4,
               min = -3,
               max = 3),
       y=rep(5,4),
       col=sample(c("#0073ff","#ff0008","#8400ff"),
                  size=4,
                  replace=T),
       cex=3,
       pch=19)

points(x=runif(n = 4,
               min = -2,
               max = 2),
       y=rep(6.25,4),
       col=sample(c("#0073ff","#ff0008","#8400ff"),
                  size=4,
                  replace=T),
       cex=3,
       pch=19)

points(x = 0,
       y = 7.5,
       pch=11,
       cex=5,
       col="gold",
       lwd=3)

# Colocando presentes na arvore

xPres = runif(
  n = 5,
  min = -3.5,
  max = 3.5)

xWidth = runif(
  n = 5,
  min = 0.3,
  max = 0.5)

xHeight=runif(
  n = 5,
  min = 1,
  max = 1.5)

for(i in 1:5){
  rect(xPres[i]-xWidth[i],
       0,xPres[i]+xWidth[i],
       xHeight[i],
       col=sample(c("blue","red"),size=1))

  rect(xPres[i]-0.2*xWidth[i],
       0,xPres[i]+0.2*xWidth[i],
       xHeight[i],
       col=sample(c("gold","grey87"),
                  size=1))
}

