# getting and cleaning data course project

This README file contains general information about the code file run_analysis.R.

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
Here are the data for the project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
The R script called run_analysis.R that does the following:

Merges the training and the test sets to create one data set.

Extracts only the measurements on the mean and standard deviation for each measurement.

Uses descriptive activity names to name the activities in the data set.

Appropriately labels the data set with descriptive variable names.

From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

First, the script makes sure data was downloaded and extracted correctly in R's working directory.
Then it reads the 8 data and labeling files to 8 variables.
Next, test and train datasets are combined, columns are given names, and subject and activity columns are mached.
Activity numeric values are replaced with discriptive strings.
Using aggregate() the data is grouped by subjects and activities and means are calculated for each column.
Lastly, all unnecessary variables are deleated leaving only x and x_means _, and write it to a file namedstep_5.txt.

Required package: the script requires dplyr package to be pre-installed
