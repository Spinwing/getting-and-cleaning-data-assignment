# Getting and Cleaning Data Course, Johns Hopkins University on Coursera
# Peer Graded Assignment
# 
# Author: spinwing
# date created: 2016-01-07
#
# Assignment
#
# 1) Merge the training and the test sets to create one data set.
# 2) Extract only the measurements on the mean and standard deviation for 
# each measurement.
# 3) Use descriptive activity names to name the activities in the data set.
# 4) Appropriately labels the data set with descriptive variable names.
# 5) From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

# ASSUMPTIONS
# -----------------------------------------------------------------------------
# data has been already downloaded. 
# working folder structure is
# - root
# \--- source                       : source folder
# \--- data                         : data main folder
#      \--- train                   : training data folder
#           \--- Inertial Signals
#      \--- test                    : test data folder
#           \--- Inertial Signals
# Data assembly section
# -----------------------------------------------------------------------------
# SCRIPT ASSUMES YOU ARE IN THE SOURCE DIRECTORY WHEN YOU EXECUTE IT
# -----------------------------------------------------------------------------

# data is located under 
# - ../data         : location of description files
# - ../data/test    : location of test data
# - ../data/train   : location of train data

library(dplyr)

# wrapper around gsub, so that we can use dplyr chaining which is way readable
mygsub <- function(x, pattern, replace) {
    gsub(pattern, replace, x)
}

print("loading features...")
# load all features
features <- read.table("../data/features.txt", colClasses = "character")
# selects only the features which end either in -mean() or -std()
# we store the number of the selected colmuns for later use
features_cols <- grep(".-mean.*|.-std.*", features[,2])

# now we create a vector with the names and we tidy it
features_names <- features[features_cols,2]
# tidy the new vector
# removes the () and "-" and capitalizes the first letter of mean and std
# seems that gsub does not support %>% and therefore we need to execute step by
# step...
features_names <- features_names %>% mygsub("-mean", "Mean") %>%
                                     mygsub("-std", "Std") %>%
                                     mygsub("[-()]", "")

# now we have two vectors: 
# - features_cols   : contains the indexes of the columns we want
# - features_names  : contains the tidy text of the colums we want

# reads the activity labels. 
activity_labels <- read.table("../data/activity_labels.txt", 
                              colClasses = "character")

# DATA loading section
# -----------------------------------------------------------------------------
# we will now load the three set of files for TEST and TRAIN
# files are: X_***, y_*** and subject_*** where *** is either "test" or "train
# we then merge the three tables into one for TEST and one for TRAIN 
# and then we merge the two subtables into one big table
#
# note that given that those tables are quite large, we already select 
# the columns we wat during load! This has two benefits:
# 1) it speeds up loading as the loader (read.table) is clever enough to discard
#    the columns we don't want
# 2) the size in memory of the two tables will be smaller. Given that the last 
#    step is to merge them, then the smaller the better

print("loading data...")
# TEST data
# load the files
test_subject <- read.table("../data/test/subject_test.txt")
test_x <- read.table("../data/test/X_test.txt")[features_cols]
test_y <- read.table("../data/test/y_test.txt")

# joins the TEST tables
test_data <- cbind(test_subject, test_y, test_x)


# TRAIN data
# load the files
train_subject <- read.table("../data/train/subject_train.txt")
train_x <- read.table("../data/train/X_train.txt")[features_cols]
train_y <- read.table("../data/train/y_train.txt")

# joins the TRAIN tables
train_data <- cbind(train_subject, train_y, train_x)

# final join
complete_data <- rbind(test_data, train_data)

# Table header configuration
# -----------------------------------------------------------------------------
print("configuring table...")
colnames(complete_data)  <- c("subject", "activity", features_names)

# Factors
# -----------------------------------------------------------------------------
# factoring the subjects, even if there is really no translation
# that helps for the grouping of the last step
complete_data$subject <- as.factor(complete_data$subject)

# for activities we have a translate table, therefore we convert them in 
# factors using the activities loaded and let R do the dirty work for us
complete_data$activity <- factor(complete_data$activity, 
                                  levels=activity_labels[,1],
                                  labels=activity_labels[,2])

# Creation of a new data set
# -----------------------------------------------------------------------------
# last step is to create a second tidy dataset with the average of each variable
# for each activity and subject
print("creating new tidy data set")
tidy_set <- complete_data %>% group_by(activity, subject) %>% 
    summarize_each(funs(mean)) 

# writes off as CSV
print("writing data set...")
write.table(tidy_set, file = "../data/tidy_data_set.csv", 
            sep=",", 
            row.names = FALSE)

print("done!")