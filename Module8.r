library(pryr)
library(ISLR)
library(boot)
library(data.table)
library(plyr)

#Step 1: Import Dataset to R
table <- read.table("assignment6.txt",header=TRUE,sep=",")
StudentAverage = ddply(table,"Sex",transform,Grade.Average=mean(Grade))

#Step 2: Convert the data set to a dataframe for names which contain the letter i, and create a new dataset.
i_students <- subset(table,grepl("i",table$Name,ignore.case=T))

#Step 3: Write the filtered dataset to a CSV file
write.csv(i_students, file=file.choose())
