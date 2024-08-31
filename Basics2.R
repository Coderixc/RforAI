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
