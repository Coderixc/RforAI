#TASK 1
#print Hello World

mess = "Hello World"
print(mess)

#Plot in Graph
plot(1:10)

#ADD 
add = 5+5
print("Addition of two number is " )
print(add)

#R SYNTAX
#string - using Single Quote or Double Qutes
str1= 'Hello World'
str2= "Hello World"

#Comment (#)

#Creating Variables in R
#A variable is created the moment you first assign a value to it. (<- )
name <- 'ALgorithm Trading'
age <- 40

name
age


#Print / Output Variables
name <- 'Algorithm Trading'
name  #auto print Features

print(name)

#Concatenate Elements  - (**)

#first Method by using paste()
text <- "Trading"
paste("Algo " ,text )

text2 <- "Nifty"
text3 <- "50"
paste(text2, text3)

#second Method by using "+"
#number
num<- 5
num2 <- 10
num+num2

#string
num <- 5
text<- 'concate'
str(num)+text
#ERRROR : If you try to combine a string (text) and a number, R will give you an error:


#TASK 2 : LOOPING

for (x in 2:100)
{
  print(x)
}




