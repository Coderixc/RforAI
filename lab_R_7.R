#Output is always 0 to 1 

x<-runif(10)
plot(x)

a<- 2
x <- -(1/a)* log(1-runif(100));
x;
mean(x)

alp =2; lmd = 0.5
u<- runif(10)
x<- (-(1/lmd) * log(1-u))^(1/alp)
x;