library(dplyr)
library(tidyr)
library(reshape2)

## download and unzip data

# Validate duplicates and download
file_name <- "UCI Har Dataset.zip"
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

if(!file.exists(file_name)){
        download.file(url = url, file_name)
}

# Validate dupilcates and unzip
dir <- "UCI HAR Dataset"

if(!file.exists(dir)){
        unzip(file_name)
}
## Process data

# Read data

test_data <- read.table("UCI HAR Dataset/test/X_test.txt")
train_data <- read.table("UCI HAR Dataset/train/X_train.txt")
test_actLable <- read.table("UCI HAR Dataset/test/y_test.txt")
train_actLable <-read.table("UCI HAR Dataset/train/y_train.txt")
test_volunteer <- read.table("UCI HAR Dataset/test/subject_test.txt")
train_volunteer <- read.table("UCI HAR Dataset/train/subject_train.txt")
activities <-  read.table("UCI HAR Dataset/activity_labels.txt")
features <- read.table("UCI HAR Dataset/features.txt")

## 1. Merges the training and the test sets to create one data set. 
dataset <- rbind(test_data, train_data)
dataset_actLable <- rbind(test_actLable,train_actLable)
volunteers <- rbind(test_volunteer,train_volunteer)


# Pass colomn name to this table
names(dataset) <- features[,2]

## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
mean_std <- grep("mean|std",features[,2])
real_rawdata <- dataset[,mean_std]




## 4.Appropriately labels the data set with descriptive variable names.
names(real_rawdata) <- sapply(names(real_rawdata),function(x){gsub("[()]","",x)})

## 3. Uses descriptive activity names to name the activities in the data set
names(dataset_actLable) <- "activities"
names(volunteers) <- "volunteers"

activity_name <- factor(dataset_actLable$activities)
levels(activity_name) <- activities[,2]
dataset_actLable$activities <- activity_name
real_data <- cbind(volunteers,dataset_actLable,real_rawdata)
real_data <- real_data[order(real_data$`volunteers`),]


## 5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
# gather then dcast to get mean of each variable.

second_rawdata <- real_data %>% gather(key = variables,value = value, -c(1:2))
second_dataset <- dcast(Second_rawdata,volunteers + activities ~ variables,mean)
tidy_data <- second_dataset %>% select(-c(1:2))

# means of means and stds
names(tidy_data) <- paste("Means of ", names(tidy_data))
write.table(tidy_data,file = "tidy_data.txt",sep = ",") 


