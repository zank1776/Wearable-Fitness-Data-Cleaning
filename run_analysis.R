#Coursera: Getting and Cleaning Data Course Project

## Load packages
library(plyr)

fileholder <- "cleandata_data.zip"

### Download data file and unzip
if (!file.exists(fileholder)) {
        URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
        download.file(URL, fileholder)
}
if (!file.exists("UCI HAR Dataset")) {
        unzip(fileholder)
}

### Step One: Merge the training and the test sets to create one data set. 

training <- read.table("UCI HAR Dataset/train/X_train.txt")
trainActivities <- read.table("UCI HAR Dataset/train/Y_train.txt")
trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

test <- read.table("UCI HAR Dataset/test/X_test.txt")
testActivities <- read.table("UCI HAR Dataset/test/y_test.txt")
testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

####Create X data
xdata <- rbind(training, test)

####create Y data
ydata <- rbind(trainActivities, testActivities)

####Create Subject data
subjectdata <- rbind(trainSubjects, testSubjects)


## Step Two: Extract only the measurements on the mean and standard deviation for each measurement.
features <- read.table("UCI HAR Dataset/features.txt")
extract <- grep(".*mean.*|.*std.*", features[,2])

xdata <- xdata[,extract]
names(xdata) <- features[extract, 2]

### Step Three: Uses descriptive activity names to name the activities in the data set
activities <- read.table("UCI HAR Dataset/activity_labels.txt")
ydata[,1] <- activities[ydata[,1],2]
names(ydata) <- "activity"

### Step Four: Appropriately label the data set with descriptive variable names. 
names(subjectdata) <- "subject"
alldata <- cbind(xdata, ydata, subjectdata)
colNames = colnames(alldata)

for (i in 1:length(colNames)) {
        colNames[i] = gsub("*std*","StdDev", colNames[i])
        colNames[i] = gsub("\\()", "", colNames[i])
        colNames[i] = gsub("*Mag*", "Magnitude", colNames[i])
        colNames[i] = gsub("^(t)", "Time", colNames[i])
}

colnames(alldata) = colNames

### Step Five: Create second tidy data set with the average of each variable for each activity and each subject. 
library(plyr)
allData2 <- aggregate(.~subject + activity, alldata, mean)
allData2 <- allData2[order(allData2$subject, allData2$activity),]

write.table(allData2, file = "tidydata.txt", row.name = FALSE)
