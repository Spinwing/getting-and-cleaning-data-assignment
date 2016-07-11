# Getting and Cleaning Data Course, Peer Graded Assignment
# README

One of the most exciting areas in all of data science right now is wearable 
computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop 
the most advanced algorithms to attract new users. The data represent data 
collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Data for the project can be downloaded from here:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The script run_analysis.R performs the following operations:

* Preloads the descriptions to be later used in the script
* Tidy the labels so that are more readable
* Loads the datasets. While loading, only loads the columns we are interested.
* Merges the training and the test sets to create one data set.
* Appropriately labels the data set with descriptive variable names.
* Creates a second, independent tidy data set with the average of each variable
for each activity and each subject.

The script assumes source and data are in the same folder. Also test and train 
data are in their respective folders, respecting the original structure in 
the original zip file.