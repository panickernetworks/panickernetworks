r1=read.csv("100vardelay0.03")
r2=read.csv("100vardelay0.05")
r3=read.csv("100vardelay0.07")
r4=read.csv("100vardelay0.09")
#########################################
plot(c(1,20),c(0,1),type="n",xlab="Time Scale",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5)
lines(1:20,r1$V1/100,col="red")
points(1:20,r1$V1/100,col="red",pch=16)
lines(1:20,r2$V1/100,col="blue")
points(1:20,r2$V1/100,col="blue",pch=16)
lines(1:20,r3$V1/100,col="green")
points(1:20,r3$V1/100,col="green",pch=16)
lines(1:20,r4$V1/100,col="brown")
points(1:20,r4$V1/100,col="brown",pch=16)
#########################################
r5=read.csv("100delay1")
r6=read.csv("100delay2")
r7=read.csv("100delay3")
r8=read.csv("100delay4")
r9=read.csv("100delay5")
r10=read.csv("100delay6")
r11=read.csv("100delay7")
r12=read.csv("100delay8")
r13=read.csv("100delay9")
r14=read.csv("100delay10")
r15=read.csv("100delay11")
#############################################################
plot(c(0,0.2),c(0,1),type="n",xlab="Transmisison Radius",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5)
lines(seq(0,0.2,0.005),r5$V1/100,col="red")
points(seq(0,0.2,0.005),r5$V1/100,col="red",pch=16)
lines(seq(0,0.2,0.005),r9$V1/100,col="blue")
points(seq(0,0.2,0.005),r9$V1/100,col="blue",pch=16)
lines(seq(0,0.2,0.005),r14$V1/100,col="green")
points(seq(0,0.2,0.005),r14$V1/100,col="green",pch=16)
lines(seq(0,0.2,0.005),r46$V1/100,col="brown")
points(seq(0,0.2,0.005),r46$V1/100,col="brown",pch=16)
lines(seq(0,0.2,0.005),r47$V1/100,col="orange")
points(seq(0,0.2,0.005),r47$V1/100,col="orange",pch=16)
lines(seq(0,0.2,0.005),r48$V1/100,col="cyan")
points(seq(0,0.2,0.005),r48$V1/100,col="cyan",pch=16)
lines(seq(0,0.2,0.005),r50$V1/100,col="gold")
points(seq(0,0.2,0.005),r50$V1/100,col="gold",pch=16)
lines(seq(0,0.2,0.005),r51$V1/100,col="black")
points(seq(0,0.2,0.005),r51$V1/100,col="black",pch=16)
legend(0, 1, legend=c("1", "5","10","15","20","25","30","50","100"),
       col=c("red", "blue","green","brown","orange","cyan","gold","black"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")
##########################################
# r16=read.csv("100delay13")
# r17=read.csv("100delay14")
# r18=read.csv("100delay15")
# r19=read.csv("100delay17")
##########################################

r20=read.csv("200vardelay0.03")
r21=read.csv("200vardelay0.05")
r22=read.csv("200vardelay0.07")
r23=read.csv("200vardelay0.09")

##########################################
r24=read.csv("500vardelay0.02")
r25=read.csv("500vardelay0.03")
r26=read.csv("500vardelay0.04")
r27=read.csv("500vardelay0.05")
plot(c(1,20),c(0,1),type="n",xlab="Time Scale",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5,main="Density 500")

lines(1:20,r24$V1/500,col="brown")
points(1:20,r24$V1/500,col="brown",pch=16)

lines(1:20,r25$V1/500,col="green")
points(1:20,r25$V1/500,col="green",pch=16)

lines(1:20,r26$V1/500,col="blue")
points(1:20,r26$V1/500,col="blue",pch=16)

lines(1:20,r27$V1/500,col="red")
points(1:20,r27$V1/500,col="red",pch=16)

legend(15, 1, legend=c("0.02", "0.03","0.04","0.05"),
       col=c("brown","green","blue","red"),
       lty=1,lwd=2, cex=0.95,title = "Transmission Radius")

##########################################
r28=read.csv("100vardelay0.11")
r29=read.csv("100vardelay0.13")
r30=read.csv("100vardelay0.15")
r31=read.csv("100vardelay0.17")
##########################################
r32=read.csv("300vardelay0.06")
r33=read.csv("300vardelay0.08")
r34=read.csv("300vardelay0.01")
##########################################
r35=read.csv("200vardelay0.08")
r36=read.csv("200vardelay0.06")
r37=read.csv("200vardelay0.04")
r38=read.csv("200vardelay0.01")
r39=read.csv("200vardelay0.12")
r40=read.csv("200vardelay0.14")
r41=read.csv("200vardelay0.16")
r42=read.csv("200vardelay0.18")
r43=read.csv("200vardelay0.20")
r44=read.csv("200vardelay0.22")
plot(c(1,20),c(0,1),type="n",xlab="Time Scale",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5,main="Density 200")

lines(1:20,r38$V1/200,col="brown")
points(1:20,r38$V1/200,col="brown",pch=16)

lines(1:20,r37$V1/200,col="green")
points(1:20,r37$V1/200,col="green",pch=16)

lines(1:20,r36$V1/200,col="blue")
points(1:20,r36$V1/200,col="blue",pch=16)


lines(1:20,r35$V1/200,col="red")
points(1:20,r35$V1/200,col="red",pch=16)

legend(15, 1, legend=c("0.01", "0.04","0.06","0.08"),
       col=c("brown","green","blue","red"),
       lty=1,lwd=2, cex=0.95,title = "Transmission Radius")


lines(1:20,r39$V1/200,col="green4")
points(1:20,r39$V1/200,col="green4",pch=16)

lines(1:20,r40$V1/200,col="violet")
points(1:20,r40$V1/200,col="violet",pch=16)
lines(1:20,r41$V1/200,col="orange")
points(1:20,r41$V1/200,col="orange",pch=16)
lines(1:20,r42$V1/200,col="cyan")
points(1:20,r42$V1/200,col="cyan",pch=16)
# lines(1:20,r43$V1/200,col="brown")
# points(1:20,r43$V1/200,col="brown",pch=16)
# lines(1:20,r44$V1/200,col="brown")
# points(1:20,r44$V1/200,col="brown",pch=16)
##########################################
r45=read.csv("100delay15")
r46=read.csv("100delay20")
r47=read.csv("100delay25")
r48=read.csv("100delay30")
r49=read.csv("100delay40")
r50=read.csv("100delay50")
r51=read.csv("100delay100")
##########################################
r52=read.csv("200delay5")
r53=read.csv("200delay10")
r54=read.csv("200delay15")
r55=read.csv("200delay20")
r56=read.csv("200delay25")
r57=read.csv("200delay30")
r58=read.csv("200delay40")
r59=read.csv("200delay50")
r60=read.csv("200delay100")
plot(c(0,0.2),c(0,1),type="n",xlab="Time Scale",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5)
lines(seq(0,0.2,0.005),r52$V1/200,col="red")
points(seq(0,0.2,0.005),r52$V1/200,col="red",pch=16)
lines(seq(0,0.2,0.005),r53$V1/200,col="blue")
points(seq(0,0.2,0.005),r53$V1/200,col="blue",pch=16)
lines(seq(0,0.2,0.005),r54$V1/200,col="green")
points(seq(0,0.2,0.005),r54$V1/200,col="green",pch=16)
lines(seq(0,0.2,0.005),r55$V1/200,col="brown")
points(seq(0,0.2,0.005),r55$V1/200,col="brown",pch=16)
lines(seq(0,0.2,0.005),r56$V1/200,col="orange")
points(seq(0,0.2,0.005),r56$V1/200,col="orange",pch=16)
lines(seq(0,0.2,0.005),r57$V1/200,col="cyan")
points(seq(0,0.2,0.005),r57$V1/200,col="cyan",pch=16)
lines(seq(0,0.2,0.005),r58$V1/200,col="gold")
points(seq(0,0.2,0.005),r58$V1/200,col="gold",pch=16)
lines(seq(0,0.2,0.005),r59$V1/200,col="black")
points(seq(0,0.2,0.005),r59$V1/200,col="black",pch=16)

##########################################
r72=read.csv("500delay1")
r61=read.csv("500delay5")
r62=read.csv("500delay10")
r63=read.csv("500delay15")
r64=read.csv("500delay20")
r65=read.csv("500delay25")
r66=read.csv("500delay30")
r67=read.csv("500delay40")
r73=read.csv("500delay50")
r74=read.csv("500delay100")
##########################################
r68=read.csv("200_0.1_300itrr")
r69=read.csv("200_0.12_300itrr")
r70=read.csv("200_0.15_300itrr")
##########################################

##########################################
r75=read.csv("500vardelay0.07")
r76=read.csv("500vardelay0.08")
r77=read.csv("500vardelay0.09")
r78=read.csv("500vardelay0.10")
r79=read.csv("500vardelay0.11")
r80=read.csv("500vardelay0.11")

plot(c(0,150),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5,main="Transmission radius = 0.1")
r68=read.csv("200_0.1_300itrr")
r69=read.csv("200_0.12_300itrr")
r70=read.csv("200_0.15_300itrr")
v1=r68$v1
v2=r68$v2
v3=r68$v3
v4=r68$v4
v5=r68$v5
v6=r68$v6
v7=r68$v7
v8=r68$v8
v9=r68$v9






lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)

legend(100, 0.8, legend=c("1", "5","10","15","20","30","40","50","100"),
       col=c("blue","green","orange","red","black","violet","brown3","gray","cyan3"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")
for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}


plot(c(0,150),c(0,0.9),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5,main="Transmission radius = 0.12")
r68=read.csv("200_0.12_300itrr")
v1=r68$v1
v2=r68$v2
v3=r68$v3
v4=r68$v4
v5=r68$v5
v6=r68$v6
v7=r68$v7
v8=r68$v8
v9=r68$v9






lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)

legend(100, 0.8, legend=c("1", "5","10","15","20","30"),
       col=c("blue","green","orange","red","black","violet"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")
for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}


plot(c(0,150),c(0,1),type="n",xlab = "Time",ylab = "Prevalence",cex.lab=1.5,
     cex.axis=1.5,main="Transmission radius = 0.15")

r68=read.csv("200_0.15_300itrr")
v1=r68$v1
v2=r68$v2
v3=r68$v3
v4=r68$v4
v5=r68$v5
v6=r68$v6
v7=r68$v7
v8=r68$v8
v9=r68$v9






lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)

legend(100, 0.8, legend=c("1", "5","10","15","20"),
       col=c("blue","green","orange","red","black"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")
for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}




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
     cex.axis=1.5,main="Transmission radius - 0.07")

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


r68=read.csv("15101520304050100")
v1=r68$v1
v2=r68$v2
v3=r68$v3
v4=r68$v4
v5=r68$v5
v6=r68$v6
v7=r68$v7
v8=r68$v8
v9=r68$v9






lines(1:200,v1,col="blue",lwd=1.5)
# lines(1:200,avg(200,0.07,2),col="red",lwd=2)
# lines(1:200,avg(200,0.07,3),col="green",lwd=2)
# lines(1:200,avg(100,0.07,4),col="brown",lwd=2)
# v2=avg(200,0.1,5)
lines(1:200,v2,col="green",lwd=1.5)
# v3=avg(200,0.1,10)
lines(1:200,v3,col="orange",lwd=1.5)
# v4=avg(200,0.1,15)
lines(1:200,v4,col="red",lwd=1.5)
# v5=avg(200,0.1,20)
lines(1:200,v5,col="black",lwd=1.5)
# v6=avg(200,0.1,30)
lines(1:200,v6,col="violet",lwd=1.5)
# v7=avg(200,0.1,40)
lines(1:200,v7,col="brown3",lwd=1.5)
# v8=avg(200,0.1,50)
lines(1:200,v8,col="gray",lwd=1.5)
# v9=avg(200,0.1,100)
lines(1:200,v9,col="cyan3",lwd=1.5)

legend(100, 0.8, legend=c("1", "5","10","15","20","30","40","50","100"),
       col=c("blue","green","orange","red","black","violet","brown3","gray","cyan3"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")
for (i in seq(0,200,5)) {
  abline(v=i,col="gray",lty=2,lwd=0.35)
}




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


plot(c(0,0.2),c(0,1),type="n",xlab="Transmisison Radius",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5,main = "Density = 100")
lines(seq(0,0.2,0.005),r5$V1/100,col="red")
points(seq(0,0.2,0.005),r5$V1/100,col="red",pch=16)
lines(seq(0,0.2,0.005),r9$V1/100,col="blue")
points(seq(0,0.2,0.005),r9$V1/100,col="blue",pch=16)
lines(seq(0,0.2,0.005),r14$V1/100,col="green")
points(seq(0,0.2,0.005),r14$V1/100,col="green",pch=16)
lines(seq(0,0.2,0.005),r46$V1/100,col="brown")
points(seq(0,0.2,0.005),r46$V1/100,col="brown",pch=16)
lines(seq(0,0.2,0.005),r47$V1/100,col="orange")
points(seq(0,0.2,0.005),r47$V1/100,col="orange",pch=16)
lines(seq(0,0.2,0.005),r48$V1/100,col="cyan")
points(seq(0,0.2,0.005),r48$V1/100,col="cyan",pch=16)
lines(seq(0,0.2,0.005),r50$V1/100,col="gold")
points(seq(0,0.2,0.005),r50$V1/100,col="gold",pch=16)
lines(seq(0,0.2,0.005),r51$V1/100,col="black")
points(seq(0,0.2,0.005),r51$V1/100,col="black",pch=16)
legend(0, 1, legend=c("1", "5","10","20","25","30","50","100"),
       col=c("red", "blue","green","brown","orange","cyan","gold","black"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")

plot(c(0,0.2),c(0,1),type="n",xlab="Transmisison Radius",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5,main = "Density = 200")
lines(seq(0,0.2,0.005),r52$V1/200,col="red")
points(seq(0,0.2,0.005),r52$V1/200,col="red",pch=16)
lines(seq(0,0.2,0.005),r53$V1/200,col="blue")
points(seq(0,0.2,0.005),r53$V1/200,col="blue",pch=16)
lines(seq(0,0.2,0.005),r54$V1/200,col="green")
points(seq(0,0.2,0.005),r54$V1/200,col="green",pch=16)
lines(seq(0,0.2,0.005),r55$V1/200,col="brown")
points(seq(0,0.2,0.005),r55$V1/200,col="brown",pch=16)
lines(seq(0,0.2,0.005),r56$V1/200,col="orange")
points(seq(0,0.2,0.005),r56$V1/200,col="orange",pch=16)
lines(seq(0,0.2,0.005),r57$V1/200,col="cyan")
points(seq(0,0.2,0.005),r57$V1/200,col="cyan",pch=16)
lines(seq(0,0.2,0.005),r58$V1/200,col="gold")
points(seq(0,0.2,0.005),r58$V1/200,col="gold",pch=16)
lines(seq(0,0.2,0.005),r59$V1/200,col="black")
points(seq(0,0.2,0.005),r59$V1/200,col="black",pch=16)
legend(0, 1, legend=c( "5","10","15","20","25","30","50","100"),
       col=c("red","blue","green","brown","orange","cyan","gold","black"),
       lty=1,lwd=2, cex=0.95,title = "Time Scale")

plot(c(0,0.2),c(0,1),type="n",xlab="Transmisison Radius",ylab="Peak Infection",
     cex.lab=1.2,cex.axis=1.5,main = "Density = 500")
lines(seq(0,0.2,0.005),r72$V1/500,col="red")
points(seq(0,0.2,0.005),r72$V1/500,col="red",pch=16)
lines(seq(0,0.2,0.005),r61$V1/500,col="blue")
points(seq(0,0.2,0.005),r61$V1/500,col="blue",pch=16)
lines(seq(0,0.2,0.005),r62$V1/500,col="green")
points(seq(0,0.2,0.005),r62$V1/500,col="green",pch=16)
lines(seq(0,0.2,0.005),r63$V1/500,col="brown")
points(seq(0,0.2,0.005),r63$V1/500,col="brown",pch=16)
lines(seq(0,0.2,0.005),r64$V1/500,col="orange")
points(seq(0,0.2,0.005),r64$V1/500,col="orange",pch=16)
lines(seq(0,0.2,0.005),r65$V1/500,col="cyan")
points(seq(0,0.2,0.005),r65$V1/500,col="cyan",pch=16)
lines(seq(0,0.2,0.005),r66$V1/500,col="black")
points(seq(0,0.2,0.005),r66$V1/500,col="black",pch=16)
lines(seq(0,0.2,0.005),r67$V1/500,col="violet")
points(seq(0,0.2,0.005),r67$V1/500,col="violet",pch=16)
lines(seq(0,0.2,0.005),r74$V1/500,col="green4")
points(seq(0,0.2,0.005),r74$V1/500,col="green4",pch=16)
# lines(seq(0,0.2,0.005),r74$V1/500,col="green4")
# points(seq(0,0.2,0.005),r74$V1/500,col="green4",pch=16)

legend(0.15, 0.75, legend=c( "1","5","10","15","20","25","30","40","100"),
       col=c("red","blue","green","brown","orange","cyan","black","violet","green4"),
       lty=1,lwd=2, cex=1,title = "Time Scale")
plot(c(0,200),c(0,1),type="n",xlab = "Time",
     ylab = "Prevalence",cex.axis=1.4,cex.lab=1.4)
r68







