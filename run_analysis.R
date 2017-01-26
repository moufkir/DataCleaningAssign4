## 1) Merges the training and the test sets to create one data set
library(dplyr)
library(data.table)
library(stringr)

setwd("/Users/moufkir/Desktop/00-Coursera/Data_Science_Spesialization/clean_assignment/UCI HAR Dataset/")

## reading activity labels files
activity_labels = read.table("./activity_labels.txt", sep = " ")
featuresData = read.table("./features.txt", sep = "\t")

## reading files and setting data frames for test
testSetData = read.table("./test/X_test.txt", sep = "\r", stringsAsFactors = FALSE)
testLblData = read.table("./test/y_test.txt", sep = " ")
testSubjectData = read.table("./test/subject_test.txt", sep = " ")


## reading files and setting data frames for training
trainSetData = read.table("./train/X_train.txt", sep = "\t")
trainLblData = read.table("./train/y_train.txt", sep = " ")
trainSubjectData = read.table("./train/subject_train.txt", sep = " ")
## naming variables
names(activity_labels) <- c("activity.id", "activity.name")
names(testLblData) <- c("activity.id")
names(testSubjectData) <- c("subject")
names(testSetData) <- c("measure")
names(trainLblData) <- c("activity.id")
names(trainSubjectData) <- c("subject")
names(trainSetData) <- c("measure")



## split the each measurement into a separate features, assign the features names
## and substruct the means and standrad deviations (do the same actions for test
## and train data sets)
testMeasures <- str_split_fixed(testSetData$measure, "[0-9] ", length(featuresData[,
    1]))
testMeasures <- data.frame(testMeasures, stringsAsFactors = FALSE)
names(testMeasures) <- featuresData[, 1]
testMeasures <- testMeasures[, grepl("MEAN|STD", toupper(names(testMeasures))) ==
    TRUE]
names(testMeasures) <- sub("[0-9]* ", "", names(testMeasures))
testMeasures <- data.frame(sapply(testMeasures, as.numeric))


trainMeasures <- str_split_fixed(trainSetData$measure, "[0-9] ", length(featuresData[,
    1]))
trainMeasures <- data.frame(trainMeasures, stringsAsFactors = FALSE)
names(trainMeasures) <- featuresData[, 1]
trainMeasures <- trainMeasures[, grepl("MEAN|STD", toupper(names(trainMeasures))) ==
    TRUE]
names(trainMeasures) <- sub("[0-9]* ", "", names(trainMeasures))
trainMeasures <- data.frame(sapply(trainMeasures, as.numeric))

## binding the columns in one dataframes activity and subject

testActivities <- data.frame(activity.id = testLblData$activity.id, subject = testSubjectData$subject)
trainActivities <- data.frame(activity.id = trainLblData$activity.id, subject = trainSubjectData$subject)

## binding the dataframes for (activities and subjects) to the measurements
## dataframes
testActivities <- cbind(testActivities, testMeasures)
trainActivities <- cbind(trainActivities, trainMeasures)

## binding the the rows of both data frames training and test
activities <- rbind(testActivities, trainActivities)

## merging the activities with activity label in order to get the labels and
## selecting only the intersting columns in a correct order
activities <- merge(activities, activity_labels, by = "activity.id", all = TRUE) %>%
    select(-(activity.id)) %>% arrange(subject, activity.name)

## clean up unused variables
rm(list = c("testSetData", "trainSetData", "featuresData", "activity_labels", "testLblData",
    "testSubjectData", "trainLblData", "trainSubjectData", "trainActivities", "testActivities",
    "trainMeasures", "testMeasures"))

## write data into the file activities.txt
write.table(activities, file = "activities.txt", row.name = FALSE)

# creates a second, independent tidy data set with the average of each variable
# for each activity and each subject
averageActivities <- aggregate(activities[, 2:dim(activities)[2] - 2], list(activities$activity.name,
    activities$subject), mean)
## write average data into the file averageActivities.txt
write.table(averageActivities, file = "averageActivities.txt", row.name = FALSE)
## clean up variables
rm(list = ls())
## reading activity labels files
activity_labels = read.table("./activity_labels.txt", sep = " ")
featuresData = read.table("./features.txt", sep = "\t")

## reading files and setting data frames for test
testSetData = read.table("./test/X_test.txt", sep = "\r", stringsAsFactors = FALSE)
testLblData = read.table("./test/y_test.txt", sep = " ")
testSubjectData = read.table("./test/subject_test.txt", sep = " ")


## reading files and setting data frames for training
trainSetData = read.table("./train/X_train.txt", sep = "\t")
trainLblData = read.table("./train/y_train.txt", sep = " ")
trainSubjectData = read.table("./train/subject_train.txt", sep = " ")
## naming variables
names(activity_labels) <- c("activity.id", "activity.name")
names(testLblData) <- c("activity.id")
names(testSubjectData) <- c("subject")
names(testSetData) <- c("measure")
names(trainLblData) <- c("activity.id")
names(trainSubjectData) <- c("subject")
names(trainSetData) <- c("measure")



## split the each measurement into a separate features, assign the features names
## and substruct the means and standrad deviations (do the same actions for test
## and train data sets)
testMeasures <- str_split_fixed(testSetData$measure, "[0-9] ", length(featuresData[,
    1]))
testMeasures <- data.frame(testMeasures, stringsAsFactors = FALSE)
names(testMeasures) <- featuresData[, 1]
testMeasures <- testMeasures[, grepl("MEAN|STD", toupper(names(testMeasures))) ==
    TRUE]
names(testMeasures) <- sub("[0-9]* ", "", names(testMeasures))
testMeasures <- data.frame(sapply(testMeasures, as.numeric))


trainMeasures <- str_split_fixed(trainSetData$measure, "[0-9] ", length(featuresData[,
    1]))
trainMeasures <- data.frame(trainMeasures, stringsAsFactors = FALSE)
names(trainMeasures) <- featuresData[, 1]
trainMeasures <- trainMeasures[, grepl("MEAN|STD", toupper(names(trainMeasures))) ==
    TRUE]
names(trainMeasures) <- sub("[0-9]* ", "", names(trainMeasures))
trainMeasures <- data.frame(sapply(trainMeasures, as.numeric))

## binding the columns in one dataframes activity and subject

testActivities <- data.frame(activity.id = testLblData$activity.id, subject = testSubjectData$subject)
trainActivities <- data.frame(activity.id = trainLblData$activity.id, subject = trainSubjectData$subject)

## binding the dataframes for (activities and subjects) to the measurements
## dataframes
testActivities <- cbind(testActivities, testMeasures)
trainActivities <- cbind(trainActivities, trainMeasures)

## binding the the rows of both data frames training and test
activities <- rbind(testActivities, trainActivities)

## merging the activities with activity label in order to get the labels and
## selecting only the intersting columns in a correct order
activities <- merge(activities, activity_labels, by = "activity.id", all = TRUE) %>%
    select(-(activity.id)) %>% arrange(subject, activity.name)

## clean up unused variables
rm(list = c("testSetData", "trainSetData", "featuresData", "activity_labels", "testLblData",
    "testSubjectData", "trainLblData", "trainSubjectData", "trainActivities", "testActivities",
    "trainMeasures", "testMeasures"))

## write data into the file activities.txt
write.table(activities, file = "activities.txt", row.name = FALSE, sep = "\t", quote = FALSE)

# melt + decast data in order to calculate the mean
averageActivities <- melt(activities, id = c("subject", "activity.name")) %>% dcast(
    subject + activity.name ~ variable, mean)
## into the file averageActivities.txt
write.table(averageActivities, file = "averageActivities.txt", row.name = FALSE,
    sep = "\t", quote = FALSE)
## clean up variables
rm(list = ls())
