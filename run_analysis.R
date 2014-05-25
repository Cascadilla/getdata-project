library(plyr)

## Read features, will be used as column names for X_test and X_train
features <- read.table("features.txt",stringsAsFactors=FALSE)

## Read activity labels
activity_labels <- read.table("activity_labels.txt")
colnames(activity_labels) <- c("activity_id", "activity_name")

## Read test dataset
subject_test <- read.table("test/subject_test.txt")
colnames(subject_test) <- c("subject")

y_test <- read.table("test/y_test.txt")
colnames(y_test) <- c("activity_id")
activity_test <- join(x = y_test, y = activity_labels)

X_test <- read.table("test/X_test.txt")
colnames(X_test) <- features$V2

test_data <- cbind(subject_test, activity_test, X_test)

## Read train dataset
subject_train <- read.table("train/subject_train.txt")
colnames(subject_train) <- c("subject")

y_train <- read.table("train/y_train.txt")
colnames(y_train) <- c("activity_id")
activity_train <- join(x = y_train, y = activity_labels)

X_train <- read.table("train/X_train.txt")
colnames(X_train) <- features$V2

train_data <- cbind(subject_train, activity_train, X_train)

## Merges the training and the test sets to create one data set
full_data <- rbind(test_data, train_data)

## Extracts only the mean and standard deviation for each measurement. 
ptn = '(.*mean[(][)].*)|(.*std[(][)].*)'
col_names <- features[grep(ptn, features$V2),]$V2
clean_data <- full_data[,c("subject", "activity_name", paste(col_names))]

## Create final tidy dataset
clean_data_avg <- aggregate(clean_data[3:66], by=clean_data[1:2], FUN=mean)
write.table(clean_data_avg, "tidy_data.txt", row.names = F)
