library(fitdistrplus)
library(stats4)
library(MASS)
library(survival)
library(actuar)
library(distrMod)
library(spatgraphs)
library(igraph)
library(spatstat)

Wealth2=function(N,C,r1,times){
  x=runif(N,0,1)
  y=runif(N,0,1)
  dfa=data.frame(x,y)
  g1=spatgraph(dfa,"geometric",par=r1)
  p1=g1[]
  gr1=graph_from_adj_list(p1$edges)
  S=rnorm(N,C,10)
  for (i in 1:times) {
    rn=sample(1:N,1,replace = TRUE)
    if(S[rn]==0){
      S=S
    }else{
      nei=neighbors(gr1,rn)
      if(length(nei)==0){
        S=S
      }else if(length(nei)==1){
        if(S[nei]<S[rn]){
          S[rn] = S[rn] - 1
          S[nei] = S[nei] + 1
        }else{
          S=S
        }
      }else if(length(nei)>1){
        minS=min(S[nei])
        WminS=which(S[nei] %in% c(minS))
        RminS=sample(WminS,1, replace = TRUE)
        if(S[nei[RminS]]<S[rn]){
          S[rn] = S[rn] - 1
          S[nei[RminS]] = S[nei[RminS]] + 1
        }else{
          S=S
        }
      }
    }
  }
  hist(S,freq = FALSE)
  plotdist(S, histo = TRUE, demp = TRUE)
  norm.f <- fitdist(S, "norm")
  return(norm.f)
}
Wealth2(100,100,0.04,100000)

# 
# Y1 <- 100
# set.seed(101) ## for reproducibility
# x.pois<-rpois(Y1, 20)
# hist(x.pois, breaks=100,freq=FALSE)
# lines(density(x.pois, bw=0.8), col="red")
# library(MASS)
# (my.mle<-fitdistr(x.pois, densfun="poisson"))
# ##      lambda  
# ##   20.6700000 
# ##  ( 0.4546427)
# BIC(my.mle)


