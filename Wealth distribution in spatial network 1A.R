library(parallel)
library(foreach)
library(doParallel)
library(spatstat)
library(spatgraphs)
library(igraph)
no_cores <- detectCores()
no_cores
# Setup cluster
clust <- makeCluster(no_cores) #This line will take time
clusterEvalQ(clust,library(igraph))
clusterEvalQ(clust,library(spatgraphs))
clusterEvalQ(clust,library(spatstat))
registerDoParallel(makeCluster(no_cores))

N=100
C=100
r1=0.2
Wealth=function(N,C,r1,times){
  x=runif(N,0,1)
  y=runif(N,0,1)
  dfa=data.frame(x,y)
  g1=spatgraph(dfa,"geometric",par=r1)
  p1=g1[]
  gr1=graph_from_adj_list(p1$edges)
  S=rep(C,N)
  for (i in 1:times) {
    rn=sample(1:N,1,replace = TRUE)
    if(S[rn]==0){
      S=S
    }else{
      nei=neighbors(gr1,rn)
      if(length(nei)==0){
        S=S
      }else if(length(nei)>0){
        rpair=sample(nei,1)
        S[rn] = S[rn] - 1
        S[rpair] = S[rpair] + 1
      }
    }
  }
  hist(S,freq = FALSE,breaks = 20)
}

Wealth(100,100,0.05,100000)

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
}
Wealth2(1000,100,0.2,10000)
##############################################
library(ggplot2)
Wealth=function(N,C,r1,times){
  x=runif(N,0,1)
  y=runif(N,0,1)
  dfa=data.frame(x,y)
  g1=spatgraph(dfa,"geometric",par=r1)
  p1=g1[]
  gr1=graph_from_adj_list(p1$edges)
  S=rep(C,N)
  for (i in 1:times) {
    rn=sample(1:N,1,replace = TRUE)
    if(S[rn]==0){
      S=S
    }else{
      nei=neighbors(gr1,rn)
      if(length(nei)==0){
        S=S
      }else if(length(nei)>0){
        rpair=sample(nei,1)
        S[rn] = S[rn] - 1
        S[rpair] = S[rpair] + 1
      }
    }
  }
  # hist(S,freq = FALSE,breaks = 20)
  h=hist(S)$density
  k=c()
  for (f in h) {
    a=f*log(f)
    k=c(k,a)
  }
  k<-k[-which(k=="NaN")]
  e=sum(k)
  print(-e)
}

Wealth(1000,100,0.1,300)

l=c()
for (i in 1:500) {
  l=c(l,mean(replicate(10,Wealth(100,100,0.2,i))))
}
plot(1:500,l)

h=hist(s)
h$density
