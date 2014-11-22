# This script is the submission to the project in Getting and Cleaning Data, Coursera Nov 2014

## The work to be done is:

## put labels on feature vectors "xtrain' and "xtest" ( "features" as headers, "subjects" names)
## create a column on "ytest" and "ytrain" from "activitylabels" to identify activities by name.
## create an "activities" column on "xtrain" and "xtest" from the new columns on "ytest" and "ytrain" including a header
## merge train and test datasets
## extract mean and standard deviation for each measurement in the feature vectors (assumption that these are already in feature vectors)
## change the column headnames to be more descriptive
## create a second tidy data set with the average of each variable (column) for each activity and each subject (probably easiest to organize first
## by subject in numerical order and then by activity). Be sure to have an appropriate descriptor (header) for each of the new columns.
## When finished:
## 1. put in GitHub repository for the script (run_analysis.R file) , a Codebook (CodeBook.md) describing variables, data and transformations, a
##    README.md (on how script works) and submit link
## 2. Please upload the tidy data set created in step 5 of the instructions. Please upload your data set as a txt file created with write.table() 
##    using row.name=FALSE 

# load data sets

ytest <- read.table("y_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
xtest <- read.table("X_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
ytrain <- read.table("y_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
xtrain <- read.table("X_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
subjecttest <- read.table("subject_test.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
subjecttrain <- read.table("subject_train.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
features <- read.table("features.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)
activitylabels <- read.table("activity_labels.txt", header = FALSE, sep = "", stringsAsFactors = FALSE)

# add features variable names to xtest and xtrain
names(features) <- c("number", "variable_names")
names(xtest)<- features$variable_names
names(xtrain)<- features$variable_names

# Remove variables from xtest and xtrain that will not be used.  
# Extract only the variables containing the mean and standard deviation (std) for each measurement
# Mean and std being already calculated, search with "grep" for the words "mean" or "std" in the variable names. 
# newcolnames will contain the columns (numbers) for the desired variables
newcolnames <- sort(c(grep("mean",colnames(xtest)), grep("std",colnames(xtest))))

# Use the vector of column numbers and use "subset" to produce "sxtest" and "sxtrain" which contain only those variables
sxtest <- subset(xtest, select = newcolnames)
sxtrain <- subset(xtrain, select = newcolnames)

# merge the vectors with the activity numbers "ytest" and "ytrain" with the actual activity lables "activitylabels"
testactivity <- merge(ytest, activitylabels)
trainactivity <- merge(ytrain, activitylabels)

# add appropriate column labels to "testactivity" and "trainactivity"
names(testactivity) <- c("activity_number", "activity")
names(trainactivity) <- c("activity_number", "activity")

# add columns containing information on activities
actsxtest <- cbind(testactivity, sxtest)
actsxtrain <- cbind(trainactivity, sxtrain)

# Add suitable header to "subjecttest" and "subjecttrain" vectors containing the subject identifiers
names(subjecttest)<- "subject"
names(subjecttrain)<-"subject"

# Add subject vectors "subjecttest" and "subjectrain" to "actsxtest" and "actsxtrain" 
subacttest <- cbind(subjecttest, actsxtest)
subacttrain <- cbind(subjecttrain, actsxtrain)

# combine "subacttest" and "subacttrain" to form one dataset 

totaldata <- rbind(subacttest, subacttrain)

# remove "activity_number" column to tidy up the data set
ftotaldata <- totaldata[-c(2)]

# Sort ftotaldata by subject and then by activity just to make the data set tidier
# Of course, sorting by activity and then my subject is just a appropriate, depending on how the dataset will be used
nftotaldata<- arrange(ftotaldata, subject, activity)

# create a text file from the ftotaldata
write.table(nftotaldata, file = "finaltotaldata.txt", row.name = FALSE)
