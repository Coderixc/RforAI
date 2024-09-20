#Towards Filtering of SMS Spam Messgaes uisng machine Learning Based Techniques
#import library
library(tm)


#Step 1: Load Data from Memory
data_path <- "./SMSData/sms_spam.csv"
sms_corpus <- read.csv(data_path)
#print(sms_corpus)

#Step 2: View data in conetxt od Statistics
summary(sms_corpus)

#step 3: View One Messgaes
length_data <- length(sms_corpus)

if (length_data <= 0){
  print("No Data is present ...")
  stop()  #Forcefully Exit
}
paste0("Record(s) :",length_data)
as.character(sms_corpus[[2]])

#Apply Cleaning Process which Inlcude 
#make is Standard chartcter like Lower and upper Case
#1 Removing Number
#2. Removing Filler Words (STOP Words)
#3. Re

sms_corpus_clean = tolower(sms_corpus)
as.character(sms_corpus[[2]])
as.character(sms_corpus_clean[[2]])

#Step 4 : Cleaning (Remove Numbers)
sms_corpus_clean <- rempveNumbers(sms_corpus_clean)

help(tm)