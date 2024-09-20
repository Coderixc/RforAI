#Task 1
stores <- read.csv("stores 1.csv")
stores
View(stores)

print(is.data.frame(stores))
print(ncol(stores))
print(nrow(stores))

#Task 2 : Manipulate Data in CSV
#fix(stores)  #View to Show your Data

summary(stores)

#Acess Coloumn from Data

trd<-  stores$StoreName
print(trd)

store2 <- stores[c(1:4,15,5:14)]
#Extract first 10 rows
store2 <- stores[C(1:10),]
store2

store3<- stores$TotalSales * 1000
print(store3)

#Task 4 : Adding One Column
stores$TotalCost <- stores$Total_Customers * stores$TotalSales

stores$TotalCostUnit <- stores$Total_Customers * stores$TotalSales
View(stores)

#max or Min
print(max(stores$TotalCost))

#Subset
detail <- subset( stores, Location == "Kolkatta")

#From copy
Country <- c("India","China","Austria", "USA","Rawanda")

Population_1Jul_1999 <- c("1,433,783")

data1 <- data.frame(Country, Population_1Jul_1999)
data1

details <- subset(data1, TotalSales=max(TotalSales));

write.csv(data1,"./Test.csv")
print("csv import successful")

#Task 4: Visualization
#pie(x, Labels, Radius, Main, col, Clockwise)

x<- c(12,35,56,55)
labels <- c("A","B","C","D")
pie(x, labels)

pie(x,labels,main= "Marks of the student", col= rainbox(length(x)))




