#Task 1  0 Using PIE
#The runif() function in R generates random numbers from a uniform distribution

x <- c(12,35,56,55)

colrs <- c("blue","green","yellow","red")

pie(x, labels, main= "Marks of the student", col= colrs)


piepercent <- round(100 * x / sum(x), 1)

# Create pie chart
pie(x, labels = paste(labels, piepercent, "%"), 
    main = "Marks of the Student", col = colrs)

#Task 2
library(plotrix)
x2<- c(20,65,15,50,45)

paste("LKength of X2:", length(x2))

label2<- c("A","B","C","D","E")
pie3D(x2, labels = label2, explode = 0.3, main = "Student Marks", col = rainbow(length(x2)))

legend("topright", c("A", "B", "C", "D", "E"), cex = 0.58, fill = colrs)

#Task3  HGistogram we getr Frequency
H2 <- c(12, 35, 54, 31, 41)
M2 <- c("FEB", "MAR", "APR", "MAY", "JUN")

# Create a barplot
barplot(H2, names.arg = M2, xlab = "Month", ylab = "Revenue", col = "blue", main = "Monthly Revenue")

#TASK4 : Group By Charts
# Data for the barplot
#...R Bar Charts
#The data shown through rectangular bars having the length/height of the bar 
#propotional to the value of the variable
#barplot(h,xlab, ylab, main,col,xlim, ylim)
?barplot
H1 <- c(82,46,66,23,41);
barplot(H1);

H2 <- c(12,35,54,31,41);#revenue of the months
M2 <- c("Feb","Mar","Apr","May","Jun")
barplot(H2,names.arg=M2,xlab="Months",ylab="Revenue",col="green",main="Revenue Bar charts", border="black")

colrs <- c("blue","green","yellow","red","grey")
barplot(H2,names.arg=M2,xlab="Months",ylab="Revenue",col=colrs,main="Revenue Bar charts", border="red")


# Group Bar chart and stake bar charts
months <- c("Feb","Mar","Apr","May","Jun")
regions <- c("West","North","South")
values <- matrix(c(c(12,35,54,31,41),c(20,25,85,30,18),c(12,35,54,31,41)),nrow=3,ncol=5,byrow=T); values;
barplot(values,main="Total Revenue",names.arg=months,xlab="Months",ylab="Revenue",col=c("red","green","yellow"))

legend("topleft",regions,cex=0.6,fill=c("red","green","yellow"))


x <-runif(100,1,10)
print(x)

