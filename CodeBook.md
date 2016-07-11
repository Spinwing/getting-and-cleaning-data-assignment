---
title: "Getting and Cleaning Data Course, Peer Graded Assignment"
author: "Spinwing"
date: "8 July 2016"
output: html_document
---

# Code Book

## Synopsis
One of the most exciting areas in all of data science right now is wearable 
computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop 
the most advanced algorithms to attract new users. The data represent data 
collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

You should create one R script called run_analysis.R that does the following.

* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement.
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## tidy_data_set.csv 

The tidy_data_set.csv contains the result of the assignment in form of a csv file.

### dataset structure
Except when noted, all variables are numeric. Values correspond to the mean
of the obsevations in the original dataset.

Variable | Notes
-------- | ----------------------------------------
activity | char: activity performed
subject | char: test subject identification (ID)
tBodyAccMeanX | . 
tBodyAccMeanY | . 
tBodyAccMeanZ | . 
tBodyAccStdX | . 
tBodyAccStdY | . 
tBodyAccStdZ | . 
tGravityAccMeanX | .  
tGravityAccMeanY | . 
tGravityAccMeanZ | . 
tGravityAccStdX | . 
tGravityAccStdY                | .
tGravityAccStdZ                | .
tBodyAccJerkMeanX              | .
tBodyAccJerkMeanY              | .
tBodyAccJerkMeanZ              | .
tBodyAccJerkStdX               | .
tBodyAccJerkStdY               | .
tBodyAccJerkStdZ               | .
tBodyGyroMeanX                 | .
tBodyGyroMeanY                 | .
tBodyGyroMeanZ                 | .
tBodyGyroStdX                  | .
tBodyGyroStdY                  | .
tBodyGyroStdZ                  | .
tBodyGyroJerkMeanX             | .
tBodyGyroJerkMeanY             | .
tBodyGyroJerkMeanZ             | .
tBodyGyroJerkStdX              | .
tBodyGyroJerkStdY              | .
tBodyGyroJerkStdZ              | .
tBodyAccMagMean                | .
tBodyAccMagStd                 | .
tGravityAccMagMean             | .
tGravityAccMagStd              | .
tBodyAccJerkMagMean            | . 
tBodyAccJerkMagStd             | .
tBodyGyroMagMean               | .
tBodyGyroMagStd                | .
tBodyGyroJerkMagMean           | .
tBodyGyroJerkMagStd            | .
fBodyAccMeanX                  | .
fBodyAccMeanY                  | .
fBodyAccMeanZ                  | .
fBodyAccStdX                   | .
fBodyAccStdY                   | .
fBodyAccStdZ                   | .
fBodyAccMeanFreqX              | .
fBodyAccMeanFreqY              | .
fBodyAccMeanFreqZ              | .
fBodyAccJerkMeanX              | .
fBodyAccJerkMeanY              | .
fBodyAccJerkMeanZ              | .
fBodyAccJerkStdX               | .
fBodyAccJerkStdY               | .
fBodyAccJerkStdZ               | .
fBodyAccJerkMeanFreqX          | .
fBodyAccJerkMeanFreqY          | .
fBodyAccJerkMeanFreqZ          | .
fBodyGyroMeanX                 | .
fBodyGyroMeanY                 | .
fBodyGyroMeanZ                 | .
fBodyGyroStdX                  | .
fBodyGyroStdY                  | .
fBodyGyroStdZ                  | .
fBodyGyroMeanFreqX             | .
fBodyGyroMeanFreqY             | .
fBodyGyroMeanFreqZ             | .
fBodyAccMagMean                | .
fBodyAccMagStd                 | .
fBodyAccMagMeanFreq            | .
fBodyBodyAccJerkMagMean        | .
fBodyBodyAccJerkMagStd         | .
fBodyBodyAccJerkMagMeanFreq    | .
fBodyBodyGyroMagMean           | .
fBodyBodyGyroMagStd            | .
fBodyBodyGyroMagMeanFreq       | .
fBodyBodyGyroJerkMagMean       | .
fBodyBodyGyroJerkMagStd        | .
fBodyBodyGyroJerkMagMeanFreq   | .

# Activity Labels
Code | Activity name
---- | -------------
1 | WALKING
2 | WALKING_UPSTAIRS
3 | WALKING_DOWNSTAIRS
4 | SITTING
5 | STANDING
6 | LAYING
