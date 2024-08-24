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
#ERRROR : If you try to combine a string (text) and a number, R will give you an error

#R Multiple Variables
#assing the same values
var1 <- var2 <- var3 <- "Orange"
var1
var2
var3

#Variable Name
.myvar <- "John" #Legal Name

#Basic Data Type in R - class
#numeric
x <- 10L #L denote Integer
class(x)

y<- 10.5
class(y)

#comples
x<- -9i +3
class(x)

#logical (Bollean)
x<- TRUE
class(x)


#Numbers

x1 <- 10.5
x2 <- 10L
x3<- 1i 

#Numeric - FLOAT or REAL NUMBER

#TYPE CONVESRION
#as.numeric()
#as.integer()
#as.complex()
y<- 10L
as.numeric(y)

qyt <- 50L
int_qty <- as.integer(qyt)
int_qty








#TASK 2 : LOOPING

for (x in 2:100)
{
  print(x)
}


#LAB 2

name <- readline()
age <- readline()
check1 <- class(name)
print(check1)
check2 <- class(age)
print(check2)

#Vector
v <- c(23,14,45,12,12,12)
print(v)

#paste and Paste 0
paste(1,"2",3,4,"ram")
paste0(1,"2",3,4,"ram")


#second element
secMax = v[2]
print(secMax)

#length
length(v)
sort(v)
sum(v)
prod(v)


#remove
v[-1]

#unname(v)  --- remove the name or dimnames
unname(v)
help(unname)

#Dollar Sign $
#


#;list
lit1 <- list(1:7) 
lit2 <- list(5:7)
lit3 <- list(7:8)
litU <- list(lit1,lit2,lit3)
litU




