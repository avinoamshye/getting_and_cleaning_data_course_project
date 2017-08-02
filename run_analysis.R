

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement.
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names.
#5. From the data set in step 4, creates a second, independent tidy data set with the
#    average of each variable for each activity and each subject.

library(dplyr)

#checks if data exist in wd. If not, they are downloaded and extracted in working directory
if(!file.exists("./data")){dir.create("./data")}
fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data/fuci.zip")){download.file(fileURL, "./data/fuci.zip")}
if(!file.exists("./UCI HAR Dataset")){unzip("./data/fuci.zip")}

# reading all 8 data and label files to data.frames
activity_labels <- tbl_df(read.table("./UCI HAR Dataset/activity_labels.txt"))
features <- tbl_df(read.table("./UCI HAR Dataset/features.txt"))
subject_test <- tbl_df(read.table("./UCI HAR Dataset/test/subject_test.txt"))
xtest <- tbl_df(read.table("./UCI HAR Dataset/test/X_test.txt"))
ytest <- tbl_df(read.table("./UCI HAR Dataset/test/y_test.txt"))
subject_train <- tbl_df(read.table("./UCI HAR Dataset/train/subject_train.txt"))
xtrain <- tbl_df(read.table("./UCI HAR Dataset/train/X_train.txt"))
ytrain <- tbl_df(read.table("./UCI HAR Dataset/train/y_train.txt"))

#combining test and train data, adding measurement names and subject and activity columns.
xdata <- tbl_df(bind_rows(xtest,xtrain))
feats <- c(as.character(features$V2))
feats <- gsub("[(,)]", "-", feats)
feats <- gsub("-"," ",feats)
feats <- gsub("^t","time ",feats)
feats <- gsub("^f","frequency ",feats)
feats <- gsub("^ *|(?<= ) | *$", "", feats, perl = TRUE)
feats <- gsub(" ","_",feats)
names(xdata) <- feats
xsubject <- bind_rows(subject_test,subject_train)
names(xsubject) <- "subject"
xactivity <- bind_rows(ytest,ytrain)
names(xactivity) <- "activity"
xdata1 <- xdata[,!duplicated(colnames(xdata))]
xdata2 <- select(xdata1,contains("mean"))
xdata3 <- select(xdata1,contains("std"))
x <- cbind(xsubject,xactivity,xdata2,xdata3)

#replacing activity numerals with informative strings
for(i in c(1:6)){x$activity[x$activity == i] <- as.character(activity_labels$V2[activity_labels$V1 == i])}

#creating a summarized tidy dataset
measurment_names <- names(x)[3:length(x)]
x_means <- aggregate(x[measurment_names],by = x[c("subject","activity")],FUN = mean)
#removing all unnecessary data
rm(activity_labels,features,subject_test,subject_train,xactivity,xdata,xdata1,xdata2,xdata3,xsubject,xtest,ytest,xtrain,ytrain,feats,fileURL,i,measurment_names)
#creating a file for submission
write.table(x_means,"step_5.txt", row.names = FALSE)
