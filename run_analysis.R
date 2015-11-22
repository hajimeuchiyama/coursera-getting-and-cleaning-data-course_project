run_analysis <- function() {

# Description #################################################################
# This R script performs the following tasks:
# 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.
#
# Usage: run_analsis()
# Arguments: N/A
# Value: Returns a tidy data frame object
# Note: Also writes a text file ('summary.txt') on work directory

# Load libraries ##############################################################
library(plyr)
library(dplyr)

## Set path and file names ####################################################

# set path for featuers.txt and activity_labels.txt
features.fn <- "./features.txt"
activityLabels.fn <- "./activity_labels.txt"

# set train data path/file names
xTrain.fn <- "./train/X_train.txt"
yTrain.fn <- "./train/y_train.txt"
subjectTrain.fn <- "./train/subject_train.txt"

# set test data path/file names
xTest.fn <- "./test/X_test.txt"
yTest.fn <- "./test/y_test.txt"
subjectTest.fn <- "./test/subject_test.txt"

## Read files #################################################################

# Read features from "features.txt" and remove the header number per each element
features.v <- gsub("\\d+\\s{1}", "", readLines(features.fn))

# Read activity labels from "activity_labels.txt" and also remove # at the
# beginning of each line
activityLabels.v <- gsub("\\d+\\s{1}", "", readLines(activityLabels.fn))

## STEP 1 - Merge train and test dataset ######################################

# Note: 'harus' denotes 'Human Activity Recognition Using SmartPhones'
harusMerged.df <- rbind(read.table(xTrain.fn), read.table(xTest.fn))

# Add feature names from the original feature list
names(harusMerged.df) <- features.v

## STEP 2 - Extract only mean and std for each measurement ####################

# Populate trimmed feature vectors which contain 'mean(' or 'std('
feature.idx.v <- grep("(mean|std)\\(", features.v)  # index
feature.val.v <- grep("(mean|std)\\(", features.v, value = TRUE) # value

# trim the dataset
harusMergedtrim.df <- harusMerged.df[, feature.idx.v]

## STEP 3 - Use descriptive activity names to name the activities in the data set

# Read y (train/test) values and combine them
y.v <- c(readLines(yTrain.fn), readLines(yTest.fn))

# Map y values to descriptive activity labels (e.g. "WALKING") as factor
activity.v <- as.factor(mapvalues(y.v, c(1:6), activityLabels.v))

## STEP 4 - Label the data set with descriptive variable names ################

# Remove '()' and '-' and place [mean|std] at the end of the name
features.rn.v <- gsub("-(mean|std)\\(\\)-([XYZ])", "_\\2axis_\\1", feature.val.v)
features.rn.v <- gsub("-(mean|std)\\(\\)", "_\\1", features.rn.v)

# Add renamed features to the data set
names(harusMergedtrim.df) <- features.rn.v

# Read train/test subject IDs and combine them
subject.v <- as.integer(c(readLines(subjectTrain.fn), readLines(subjectTest.fn)))

## Add Activity and SubjectID the data set column 
harusMergedtrim.df$activity <- activity.v
harusMergedtrim.df$subject <- subject.v

## STEP 5 - Creates a tidy dataset with the average of each variable ########## 
#           for each activity and each subject

harusSummary.df <- harusMergedtrim.df %>%
        group_by(activity, subject) %>%
        summarize_each(funs(mean))

write.table(harusSummary.df, file = "./summary.txt", row.names = FALSE)
dput(harusSummary.df, file = "./summary_object.txt")


return(harusSummary.df)

}
