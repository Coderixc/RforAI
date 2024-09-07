#matrix

x <- 1:9
x <- seq(from = 1, to=9, by = 0.5)
x <- rep( c(1:9) , times = 24, );

print(x)


m1 <- matrix(x, nrow = 3 , ncol = 3 , byrow = FALSE)
print(m1)


#X2
x2 <- c(20:28)
print(x2)

length(x2)


m3 <- matrix(x2, nrow = 3, ncol = 3 , byrow = FALSE)
#print(m3)
print(m2)

m2[2,2] <- m2[2,2] * 5

print(m2)



x3 <- 20:28
print(x3)
m3<- matrix(x3 , nrow =3, ncol=3)
print(m2)
print(m3)



m4 <- m2 %*% m3


#Run from  Here - Srishti
m2 <- matrix(x2, nrow = 3, ncol = 3 , byrow = TRUE)
eig <- eigen(m2)
print(eig)

#dot is acessed by $
d= eig$vectors
print(d)




#Array   

row_name <- c("r1" , "r2","r3");
col_name <- c("c1","C2","c3")


#m3 <- m2[1,]
#m3 <- rbind()
#m3<- rbind(m3,m2[2:4])


x<-25

if (is.integer(x))
{
  print("x is integer")
}else
{
  print("x is not integer")
}

#next 17 - CONTAIN
y <- c("Hardwork",'is','key', 'of', 'sucess')

if ("key"%in% y)
{
 print("Found") 
}else{
  print("Not found")
}
#next 18 - if else if else
marks<- readline(prompt =  "Enter yours marks:")
#marks <- is.integer(marks)
{
  marks = is.integer(marks)
  
if(marks>75)
{
  print("Grade AA")
}else if(marks > 65) {
  print("Grade AB")
}else if (marks > 55)
{
  print("Grade BB")
}else
{
 print("Grade HH") 
}
}

#from Tarun
#MATRIX
#matrix(data, nrow=--, ncol=)
x <- 1:9
x <- seq(from=1, to=9, by=0.25);x
x <- rep(c(1:9),times=24, each=5);x
length(x)
x <- 1:5
m1 <- matrix(x, nrow=3,nCOL=3, byrow=FALSE)
m1 <- matrix(x, nrow=3, byrow=T)
print(m1)

x2 <- c(20:28)
length(x2)
m2 <- matrix(x2,nrow=3, ncol=3, byrow=FALSE)
m2
m2[2,2]
m2[2,3]
m2[3,2] <- 0
m2
m2[m2>20] <- 0;
m2
m2[1,] <- c(10,12,14)
m2[2,] <- c(16,18,20)
m2[3,] <- c(22,24,26)
m2

x3 <- 20:28
m3 <- matrix(x3,nrow=3,ncol=3);
m3
m2+m3

m4 <- m2 %*% m3; m4
eigen(m2)    #symtax eigen value : eigen
(A-xI)=0
eig <- eigen(m2)
eig$value
m5 <- diag(c(2,5,7),nrow=3,ncol=3);m5
eigen(m5) 
eig$value

m5 <- diag(1,nrow=3,ncol=3);m5
eigen(m5) 
eig$value
eig$vectors


#transpose
m2
t(m2)

rank(m2)

#naming
row_name <- c("r1","r2","r3");
col_name <- c("c1","c2","c3");

mm2 <- matrix(c(20:28),nrow=3,ncol=3, dimnames=list(row_name,col_name))
mm2
mm2["r2","c2"]
mm2["r3","c2"]

#to add the row and column in the matrix
#rbind 
#cbind
m2
m2 <- rbind(m2,c(2,6,19,67))
m2 <- cbind(m2,c(12,16,39,50))
m2
v1 <- rbind(c(1:3),c(4:6))
is.matrix(v1)

#array
#arr(data ,dim=(nrow,ncol,number of matrix))
v1 <- c(1,4,5);
v2 <- c(10,20,30,40,50);
v3 <- array(c(v1,v2),dim=c(3,3,2));
v3
v3[1,,]
v3[2,,]
v3[,1,]
v3[,2,]
v3[,,1]
v3[,,2]

m3 <- m2
m3 <- rbind()
m3 <- rbind(m3,m2[2:4])
m3


#if-else statement

x <- 25L
#is.integer(x)

if(is.integer(x)){
  print("x is integer")
}
x <- 25
if(is.integer(x)){
  print("x is integer")
}else{
  print("x is not an integer")
}

y <- c ("Hardwork","is","key","of","success")
w <- readline("Enter input :")
if(w %in% y){
  print("found")
}else{
  print("not found")
}

#if -else -if else

marks <- readline("Enter your marks:")
print(class(marks))
as.integer(marks)
print(class(marks))
if(marks >= 75){
  print ("Grade :AA")
}else if(marks >= 65 ){
  print ("Grade :AB")
}else if(marks >= 55 ){
  print ("Grade :BB")
}else{
  print ("Grade :Fail")
}
R.Version()
