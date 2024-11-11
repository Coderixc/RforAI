print("Lab Assignments 1")
library(dplyr)


x<- "./Assignments1/medals_total.csv"

medals_data <- read.csv(x)

silver_third_quartile <- quantile(medals_data$Silver.Medal, 0.75)
print(silver_third_quartile)

#5 :
x<- "./Assignments1/medals_total.csv"
medals_data <- read.csv(x)
total_medals_india_china <- sum(medals_data$Total[medals_data$Country %in% c("India", "People's Republic of China")])
print(total_medals_india_china)

#1 
medals_data <- read.csv(x)
countries_no_silver <- medals_data$Country[medals_data$Silver.Medal == 0]
print(countries_no_silver)

#2
medals_data <- read.csv(x)
gold_second_quartile <- quantile(medals_data$Gold.Medal, 0.50)
silver_second_quartile <- quantile(medals_data$Silver.Medal, 0.50)
bronze_second_quartile <- quantile(medals_data$Bronze.Medal, 0.50)
total_second_quartile_sum <- gold_second_quartile + silver_second_quartile + bronze_second_quartile
print(total_second_quartile_sum)

#3
medals_data <- read.csv(x)
gold_mean <- mean(medals_data$Gold.Medal)
print(gold_mean)

#6
passenger_data <- matrix(c(
  112, 118, 132, 129, 121, 135, 148, 148, 136, 119, 104, 118,  # 1949
  115, 126, 141, 135, 125, 149, 170, 170, 158, 133, 114, 140,  # 1950
  145, 150, 178, 163, 172, 178, 199, 199, 184, 162, 146, 166,  # 1951
  171, 180, 193, 181, 183, 218, 230, 242, 209, 191, 172, 194,  # 1952
  196, 196, 236, 235, 229, 243, 264, 272, 237, 211, 180, 201,  # 1953
  204, 188, 235, 227, 234, 264, 302, 293, 259, 229, 203, 229,  # 1954
  242, 233, 267, 269, 270, 315, 364, 347, 312, 274, 237, 278,  # 1955
  284, 277, 317, 313, 318, 374, 413, 405, 355, 306, 271, 306,  # 1956
  315, 301, 356, 348, 355, 422, 465, 467, 404, 347, 305, 336,  # 1957
  340, 318, 362, 348, 363, 435, 491, 505, 404, 359, 310, 337,  # 1958
  360, 342, 406, 396, 420, 472, 548, 559, 463, 407, 362, 405,  # 1959
  417, 391, 419, 461, 472, 535, 622, 606, 508, 461, 390, 432   # 1960
), nrow = 12, byrow = TRUE)

# Set row and column names for the data
rownames(passenger_data) <- 1949:1960
colnames(passenger_data) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Calculate the total number of passengers from 1949 to 1960
total_passengers <- sum(passenger_data)

# Display the total
total_passengers