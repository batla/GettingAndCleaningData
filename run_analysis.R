run_analysis <- function()
  
# Create an R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set.
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set with the 
#    average of each variable for each activity and each subject.

library(data.table)
library(plyr)
library(reshape2)

## begin step 1 & step 2: merging, get only mean & standard deviation,
## good column names

## Download data to allow others to run script w/o need to get data first
## specify data directory from current working directory
## requires internet connection

if(!file.exists("./data")){dir.create("./data")}
fileUrl <- 
  "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./data/Dataset.zip",method="curl")

## unzip file in "data" directory
unzip(zipfile="./data/Dataset.zip",exdir="./data")

## get the full path to files recursively - used with read.table() below
## NOTE: code assumes level below "data" directory name is "UCI HAR Dataset"
## this is known only after Dataset.zip has been unzipped
filePath <- file.path("./data" , "UCI HAR Dataset")

## read features names from seperate features file
featureVariables <- read.table(file.path(filePath, "features.txt"),head=FALSE)
featureVariables[,2] <- as.character(featureVariables[,2])

## Extract only the data on mean and standard deviation
featuresDesired <- grep(".*mean.*|.*std.*", featureVariables[,2], ignore.case=TRUE)
featuresDesired.names <- featureVariables[featuresDesired,2]
featuresDesired.names = gsub('-mean', 'Mean', featuresDesired.names)
featuresDesired.names = gsub('-std', 'Std', featuresDesired.names)
featuresDesired.names <- gsub('[-()]', '', featuresDesired.names)

## load test dataset, using featuresDesired to limit variables
testActivity <- read.table(file.path(filePath, "test" , "Y_test.txt" ),
                           header = FALSE)
testSubject <- read.table(file.path(filePath, "test" , "subject_test.txt"),
                          header = FALSE)
testData <- read.table(file.path(filePath, "test" , "X_test.txt" ),
                           header = FALSE)[featuresDesired]

## load training dataset, using featuresDesired to limit variables
trainingActivity <- read.table(file.path(filePath, "train", "Y_train.txt"),
                            header = FALSE)
trainingSubject <- read.table(file.path(filePath, "train", "subject_train.txt"),
                           header = FALSE)
trainingData <- read.table(file.path(filePath, "train", "X_train.txt"),
                            header = FALSE)[featuresDesired]

## column bind test set, training sets
## gives us data.frame in format: subject, activity, featuresDesired
allTestData <- cbind(testSubject, testActivity, testData)
allTrainingData <- cbind(trainingSubject, trainingActivity, trainingData)

## row bind test & training datasets
combinedData <- rbind(allTrainingData, allTestData)

## descriptive labels to columns
colnames(combinedData) <- c("subject", "activity", featuresDesired.names)

## begin step 3: add descriptive labels to activities and convert to factors
## e.g "WALKING" as opposed to "1"

activityLabels <- read.table(file.path(path_rf, "activity_labels.txt"),
                             header = FALSE)
combinedData$activity <- factor(combinedData$activity, levels = activityLabels[,1],
                                labels = activityLabels[,2])

## begin step 4: cleanup variable names

combinedColNames <- colnames(combinedData)

for (i in 1:length(combinedColNames)) 
{
  combinedColNames[i] = gsub("\\()","",combinedColNames[i])
  combinedColNames[i] = gsub("^t","time",combinedColNames[i])
  combinedColNames[i] = gsub("\\(t","time",combinedColNames[i])
  combinedColNames[i] = gsub("^f","freq",combinedColNames[i])
  combinedColNames[i] = gsub("BodyBody","Body",combinedColNames[i])
  combinedColNames[i] = gsub("Gyro","Gyrometer",combinedColNames[i])
  combinedColNames[i] = gsub("AccMag","AcceleratorMagnitude",combinedColNames[i])
  combinedColNames[i] = gsub("(Bodyaccjerkmag)","BodyAcceleratorJerkMagnitude",
                             combinedColNames[i])
  combinedColNames[i] = gsub("JerkMag","JerkMagnitude",combinedColNames[i])
  combinedColNames[i] = gsub("GyroMag","GyrometerMagnitude",combinedColNames[i])
};

## replace old column names with new column names
colnames(combinedData) = combinedColNames;

## begin step 5: take mean of each variable for each activity, then output

## turn subjects into factors; activity is already a factor from above
combinedData$subject <- as.factor(combinedData$subject)

## aggregate by subject, then activity, then take mean
finalData<-aggregate(. ~subject + activity, combinedData, mean)

## order by subject, activity
finalData <- finalData[order(finalData$subject,finalData$activity),]

## write to text file
write.table(finalData, file = "tidydata.txt",row.name=FALSE)

## make codebook
library(knitr)
knit2html("run_analysis.R");
