library(igraph)
library(spatstat)
library(spatgraphs)
SIR=function(N,r1,n){
  tmax=200
  beta=0.5
  gamma=0.05
  x=runif(N,0,1)
  y=runif(N,0,1)
  dfa=data.frame(x,y)
  g1=spatgraph(dfa,"geometric",par=r1) #converting to random geometric graph with radius r1
  p1=g1[]
  gr1=graph_from_adj_list(p1$edges)
  I=matrix(rep(0,N),nrow=N,ncol=1)
  S=matrix(rep(1,N),nrow=N,ncol=1)
  R=matrix(rep(0,N),nrow=N,ncol=1)
  I1=sample(1:N, size=1)
  I[I1,1]=1
  S[I1,1]=0
  t=1
  sus=c()#list to add susceptibles
  inf=c()#list to add infected
  rec=c()#list to add recovered
  gr=gr1
  while (t<=tmax) {
    t=t+1
    infneigh=gr[]%*%I[,t-1]
    #-------------------------------------------------------------------------
    # this part of code adapted from Epidemics: Models and Data using R by Ottar N Bjornstad
    pinf=1-(1-beta)**infneigh
    newI=c()
    for (i in 1:N) {
      new=rbinom(1,S[,t-1][i],pinf[i])
      newI=c(newI,new)
    }
    #-------------------------------------------------------------------------
    newR=rbinom(N,I[,t-1],gamma)
    nextS=S[,t-1]-newI
    nextI=I[,t-1]+newI-newR
    nextR=R[,t-1]+newR
    inf=c(inf,sum(nextI))
    sus=c(sus,sum(nextS))
    rec=c(rec,sum(nextR))
    I=cbind(I, nextI)
    S=cbind(S, nextS)
    R=cbind(R, nextR)
    if(t%%n==0){
      x=runif(N,0,1)
      y=runif(N,0,1)
      dfa=data.frame(x,y)
      g1=spatgraph(dfa,"geometric",par=r1) #converting to random geometric graph with radius r1
      p1=g1[]
      gr1=graph_from_adj_list(p1$edges)
      gr=gr1
    }else{
      gr=gr1
    }
  }
  infe=(c(1,inf)[1:tmax])#list of infected people over tmax time
  return(infe/N)
}
infec=SIR(200,0.07,1)
infec
plot(infec)
avg=function(N,r,n){
  l=c()
  for (i in 1:300) {
    l=c(l,SIR(N,r,n))
  }
  m=t(matrix(l,c(200,300)))
  return(colSums(m)/300)
}



plot(c(0,200),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)

v1=avg(200,0.07,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.07,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.07,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.07,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.07,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.07,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.07,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.07,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.07,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
d=write.csv(f,"15101520304050100")

for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}
for (i in seq(0,200,10)) {
  abline(v=i,col="black",lty=2,lwd=0.5)
}
for (i in seq(0,200,15)) {
  abline(v=i,col="green",lty=2,lwd=0.5)
}
for (i in seq(0,200,20)) {
  abline(v=i,col="red",lty=2,lwd=0.5)
}
for (i in seq(0,200,25)) {
  abline(v=i,col="violet",lty=3,lwd=1)
}
for (i in seq(0,200,30)) {
  abline(v=i,col="brown",lty=3,lwd=1)
}



legend(125, 0.8, legend=c("1", "5","10","15","20","30","40","50","100"),
       col=c("blue", "green","orange","red","black","violet","brown3","gray",
             "cyan3"), lty=1,lwd=2, cex=1.,title = "Time Scale")

# # legend(150, 0.6, legend=c("1", "2","3","4","5"),
# #        col=c("blue", "red","green","brown","orange"), lty=1,lwd=2, cex=1.5,title = "")
#
#
# plot(c(0,200),c(0,0.6),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
#      cex.axis=1.5)
# lines(1:200,avg(100,0.07,0.025,1)/100,col="blue",lwd=2)
# lines(1:200,avg(100,0.07,0.025,2)/100,col="red",lwd=2)
# lines(1:200,avg(100,0.07,0.025,3)/100,col="green",lwd=2)
# # lines(1:200,avg(100,0.07,0.02,4)/100,col="brown",lwd=2)
# # lines(1:200,avg(100,0.08,0.02,5)/100,col="orange",lwd=2)
#
# # legend(150, 0.6, legend=c("1", "2","3","4","5"),
# #         col=c("blue", "red","green","brown","orange"), lty=1,lwd=2, cex=1.5,title = "")
#
legend(150, 0.6, legend=c("1:1", "1:2"),
#        col=c("blue", "red"), lty=1,lwd=2, cex=1.7,title = "Ratio")
# #
# # legend(150, 0.6, legend=c("1", "2","3","4","5"),
# #        col=c("blue", "red","green","brown","orange"), lty=1,lwd=2, cex=1.5,title = "")
#
# # avg(100,0.07,0.02,1)
# # replicate(10,lines(1:200,SIRspatial1(200,0.07,0.02,1)/200,col="red",lwd=1.5))
# # replicate(10,lines(1:200,SIRspatial1(200,0.07,0.02,5)/200,col="blue",lwd=1.5))


avg=function(N,r,n){
  l=c()
  for (i in 1:50) {
    l=c(l,SIR(N,r,n))
  }
  m=t(matrix(l,c(200,50)))
  return(colSums(m)/50)
}



plot(c(0,150),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)

v1=avg(200,0.1,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f2=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
f2
write.csv(f2,"200_0.1_300itrr")

plot(c(0,150),c(0,1),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)
v1=avg(200,0.09,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
v2=avg(200,0.09,5)
lines(1:200,v2,col="green",lwd=1.5)
v3=avg(200,0.09,10)
lines(1:200,v3,col="orange",lwd=1.5)
v4=avg(200,0.09,15)
lines(1:200,v4,col="red",lwd=1.5)
v5=avg(200,0.09,20)
lines(1:200,v5,col="black",lwd=1.5)
v6=avg(200,0.09,30)
lines(1:200,v6,col="violet",lwd=1.5)
v7=avg(200,0.09,40)
lines(1:200,v7,col="brown3",lwd=1.5)
v8=avg(200,0.09,50)
lines(1:200,v8,col="gray",lwd=1.5)
v9=avg(200,0.09,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f2=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
f2
write.csv(f2,"200_0.09_300itrr")
################################################
plot(c(0,200),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)

v1=avg(200,0.07,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.07,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.07,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.07,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.07,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.07,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.07,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.07,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.07,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
d=write.csv(f,"15101520304050100")

for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}
for (i in seq(0,200,10)) {
  abline(v=i,col="black",lty=2,lwd=0.5)
}
for (i in seq(0,200,15)) {
  abline(v=i,col="green",lty=2,lwd=0.5)
}
for (i in seq(0,200,20)) {
  abline(v=i,col="red",lty=2,lwd=0.5)
}
for (i in seq(0,200,25)) {
  abline(v=i,col="violet",lty=3,lwd=1)
}
for (i in seq(0,200,30)) {
  abline(v=i,col="brown",lty=3,lwd=1)
}



legend(125, 0.8, legend=c("1", "5","10","15","20","30","40","50","100"),
       col=c("blue", "green","orange","red","black","violet","brown3","gray",
             "cyan3"), lty=1,lwd=2, cex=1.,title = "Time Scale")

plot(c(0,150),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)

v1=avg(200,0.1,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f2=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
f2
write.csv(f2,"200_0.1_300itrr")

plot(c(0,150),c(0,1),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5)
v1=avg(500,0.05,1)
lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
v2=avg(500,0.05,5)
lines(1:200,v2,col="green",lwd=1.5)
v3=avg(500,0.05,10)
lines(1:200,v3,col="orange",lwd=1.5)
v4=avg(500,0.05,15)
lines(1:200,v4,col="red",lwd=1.5)
v5=avg(500,0.05,20)
lines(1:200,v5,col="black",lwd=1.5)
v6=avg(500,0.05,30)
lines(1:200,v6,col="violet",lwd=1.5)
v7=avg(500,0.05,40)
lines(1:200,v7,col="brown3",lwd=1.5)
v8=avg(500,0.05,50)
lines(1:200,v8,col="gray",lwd=1.5)
v9=avg(500,0.05,100)
lines(1:200,v9,col="cyan3",lwd=1.5)
f2=data.frame(v1,v2,v3,v4,v5,v6,v7,v8,v9)
f2
write.csv(f2,"500_0.05_300itrr")
