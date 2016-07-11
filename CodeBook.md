---
title: "Getting and Cleaning Data Course, Peer Graded Assignment"
author: "Spinwing"
date: "8 July 2016"
output: html_document
---

# Code Book

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