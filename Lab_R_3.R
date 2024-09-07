# -- Task 1
#for loop
for (i in 1:10){
  print(i **2)
}
 
#-- Task 2
# x is a vector
x<- c()

for (i in 1:10){
  x[i]<- i **2;
  print(x)
}
#print(x)

#--  Task 3
x <- c(2,5,6,7,8)

#y<- numeric()
y <- c(0)
for (i in 1: length(x)){
  y[i] <- x[i] **2
}
y

#-- Task 4
#next (Skip) and Break
x<- 1:10
for (val in x){
  if (val==5){
    next; #Next is Like a  (Pass Keyword In Python) ,( continue in C# , C++ )
  }
  print(val)
}

#-- Task 5
v <- c("Hi", "how" ,"are" , "you")
x<- -1
repeat{  #While(True) : Infinite TImes it will run

  print(v)
  x <- x+1
  if (x>5){
    break;
  }
}


#-- Task 6

#while loop
v <- c("Hi", "how" ,"are" , "you")
x<- -1
while( x<6){
  print(v)
  x<- x+1;
}

#-- Task 7
sum<- function(x,y,z){
  result <- x+y+z ;
  print("Sum is :")
  return(result)
}

sum(20,10,30)

sumBig<- function(x){
  sm1<-0
  for(i in 1:length(x)){
    sm1<- sm1+x[i]
  }
  return(sm1)
}
in1 <- c(1:3)
in2<- c(1:3)
sumBig(c(in1, in2))


#-- Task 8
#Dataframe


emp.data <- data.frame(
  emp.id <- c(1:5),
  emp.name <- c("A" , "B", "C" , "D","E"),
  emp.sal <- c(20,30,40,50,100),
  stringsAsFactors = TRUE
)

emp.data$emp.id

#-- Task 9