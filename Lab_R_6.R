#..R line graph
#plot(v, type, col, xlab, ylab)...syntax
#In this, there are points connecting the data to show the continuous changes.
#lty parameter is used to specify the line type in plots

v <- c(18,22,28,7,31,52)
v;
plot(v)
plot(v,type="p");
plot(v,type="h");
plot(v,type="l");
plot(v,type="o");
plot(v,type="b",pch=10);
plot(v,type="s", lty=3, lwd=5,col="red");
plot(v,type="o",pch=6,col="blue",xlab="months",ylab="Temprature", lwd=3,cex=2, cex.lab=2);
?type

help(plot)

# line charts contains multiple line
v <- c(18,22,28,7,31,52)
w <- c(12,20,22,17,21,42) 
plot(v,type="o",col="blue",xlab="months",ylab="Temprature");
lines(w,type="o",col="red");
legend(locator(1),c("V","W"), fill=c("blue","red"))

#..R scatter plots
#The scatter plots are used to compare variable. A comparison b/w variable is
#required when we need to define how much one variable are affected by another variable
#plot(x,y,main,xlab,ylab,axes)

View(mtcars)
dim(mtcars)
names(mtcars)
data <- mtcars[,c('wt','mpg')]
data;


#ploting the charts for cars with weight between 2.5 to 5 and 
#milage between 15 and 30
plot(x=data$wt,y=data$mpg,xlab="weight",
     ylab="Milage",main="Weight v/s Milage", col="red", pch=19)


x<- seq(0.01,10,0.1);x

func <- function(a){
  return( a*exp(-a*x))
}

y1 <- func(1);y1
y2 <- func(2);y2
y3 <- func(1.5);y3

plot(x,y1, xlab="X",lty = 1, type = 'b', ylab = "PDF", main =  "PDF for Exp Distribution", col = "red")
lines(x, y3, lty = 3, lwd = 2, col = "blue")   # Added y3 for a different visual

legend("topright", legend = c("y1 (a=1)", "y2 (a=2)", "y3 (a=3)"), col = c("red", "black", "blue"), lty = 1:3)


#Connected scatter plot
#A connected scatter plot represents the relationship between two variables, generally through the time.
#You can create this type of chart in base R with the plot function, setting type = "b".
# Data
x <- c(1, 2, 3, 4, 5, 4, 7, 8, 9)
y <- c(12, 16, 14, 18, 16, 13, 15, 20, 22)

# Connected scatter plot
plot(x, y, type = "b",
     xlab = "Var 1", ylab = "Var 2")
#Adding text

#You can label the points with the text function. 
# This can be useful, for instance, to label the date for each pair 
# of observations. Note that we fine tuned the position of
# the labels for better readability.
# Data
x <- c(1, 2, 3, 4, 5, 4, 7, 8, 9)
y <- c(12, 16, 14, 18, 16, 13, 15, 20, 22)
labels <- 2013:2021

# Connected scatter plot with text
plot(x, y, type = "b", 
     xlim = c(1, 10), ylim = c(12, 23),
     pch = 19, col = 4,
     xlab = "Var 1", ylab = "Var 2")
text(x + 0, y + 0.4, labels)



#...R boxplot
print(mtcars$hp)

boxplot(mtcars$hp)
boxplot(mtcars$hp,
        main="mtcars data frame",
        xlab='X',
        ylab='y',
        col="yellow",
        border="red",
        horizontal=TRUE,    notch=TRUE
    
)
summary(mtcars$hp)
#notch -   Damru of Boxplot  | notches around the medians | confidence interval for the median


# Create the box plot for displacement for different gear.
my_colors=c("red","green","yellow")
boxplot(disp ~ gear, data = mtcars,
        main = "Displacement by Gear",
        xlab = "Gear",
        ylab = "Displacement",col=my_colors)

legend("topright", legend = unique(mtcars$gear), 
       fill = my_colors, border = "black", title = "Gear")


# Visualization using ggplot2
library(ggplot2)
df <- mtcars; df
#box plot
#box plot
ggplot(df, aes(x=mpg))+geom_boxplot()
ggplot(df, aes(x=mpg))+geom_boxplot(notch = TRUE, fill="red")
#scatter plot
ggplot(df, aes(x=cyl,y=mpg))+geom_point()
#bar plot
ggplot(df, aes(x=cyl))+geom_bar()


##########
?geom_boxplot()
#heat map plot in ggplot2
#reshape
#melt
#install.packages("reshape")
library(reshape)
m <- matrix(round(rnorm(100),2),10,10);m

colnames(m) <- paste("col",1:10)
rownames(m) <- paste("row",1:10)
m

is.matrix(m)
df <- melt(m)#transformate into long formate

df
colnames(df) <- c("x","y","Value")
df

library(ggplot2)
ggplot(df,aes(x=x,y=y,fill=Value))+geom_tile()

ggplot(df,aes(x=x,y=y,fill=Value))+geom_tile()+coord_fixed()

ggplot(df,aes(x=x,y=y,fill=Value))+geom_tile(color="white",lwd=1.5,linetype=1)+coord_fixed()


ggplot(df,aes(x=x,y=y,fill=Value))+geom_tile(color="white",lwd=1.5,linetype=1)+geom_text(aes(label=Value),color="white",size=2)+coord_fixed()


ggplot(df,aes(x=x,y=y,fill=Value))+geom_tile(color="white",lwd=1.5,linetype=1)+scale_fill_gradient(low="white",high="red")+coord_fixed()


par(mfrow=c(3,2))
options(max.print = 100000)
rnorm(10000)