title: "CODEBOOK"
author: "Donhirst"
date: "November 22, 2014"
output: word_document
---
# This script is the CODEBOOK submission to the project in Getting and Cleaning Data, Coursera Nov 2014

# The purpose of this project is to take several sets of data and merge them to produce one table. Much of the description is taken from the website
# referenced below which may be consulted for more details. The abstract at the website is:

Abstract: Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily
living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

# The README.txt from the website describes the experiment and the data files that will be merged. A readme file is also available in the GitHub repository which contains information from the website. The link given in the assigment directions is:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

#  It is recommended that prior to using the script that the website or the Readme file in the repository is consulted so that the remainder of this document is understandable.

# The actual data used in this project may be downloaded from the website referenced above. According to the instructions, the actual data taked, 
# listed in folders in the downloaded data set as "Inertial Signals", are not used.  There are 8 files that are actually used: These are:

#  1. X_test.txt: A 561 x 2947 test data frame.The columns correspond to information calculated from
#       the original data in the inertial data folders.
#  2. X_train.txt:  A 561 X 7352 training data frame.The columns correspond to information calculated from
#       the original data in the inertial data folders.
#  3. y_test.txt:  A vector of 2947 elements containing a set of numbers from 1 - 6. The integers identify the activity that corresponds with
#       the values calculated from the data taken from that activity. This may be decoded into the activity text descriptions using the
#       activity_labels file described below.
#  4. y_train.txt: A vector of 7352 elements containing a set of numbers from 1 - 6.The integers identify the activity that corresponds with
#       the values calculated from the data taken from that activity. This may be decoded into the activity text descriptions using the
#       activity_labels file described below.
#  5. Subject_test.txt:  A data frame consisting of 561 numbers.  The numbers are integers which identify the particular subject associated with
#       each data record in X_test.
#  6. Subject_train.txt:  A data frame consisting of 7352 numbers.  The numbers are integers which identify the particular subject associated with
#       each data record in X_train.
#  7. features.txt: A 2 dimensional data frame consisting to one column of integers from 1 to 561 and the other a character vector consisting
#       of 561 strings which identify the columns in the X_test and X_train data frames.  The columns correspond to a particular calculation from
#       the original data in the inertial data folders and this file consists of terse descriptions of the elements in each column. 
#  8. activity_labels.txt:  A 2 dimensional data frame with one column of integers from 1 to 6 and the other a character vector consisting
#       of 6 strings which identify the activities the subject were involved in when the data was taken.

## The work to be done is:

## 1. Download all 8 appropriate files.
## 2. Put labels on feature data frames: "X_train' and "X_test". This will label each column by the description of the corresponding data variable.
## 3. Remove variables from xtest and xtrain that will not be used.  
##      Extract only the variables containing the mean and standard deviation (std) for each measurement
## 4. Produce  data frames from the y_test and y_ train data and the activity_labels which which will decode the activity number with the activity
##      descriptions. The resulting data frames will consist of a column of integers denoting the number of the activity and a column with
##      the corresponding text description
## 5. Add appropriate column labels to the dataframes produced in the last step.
## 6. Add the columns of these dataframes with the activity descriptive test strings to the feature containing data frames using cbind.
## 7. Add appriopriate headers to the subject_train and subject_test vectors. Remember these column vectors associate the particular subject
##      of the test with the data element (row) which contains the values calculated from that particular instance.
## 8. Add the subject_train and subject_test vectors as columns to the appropriate X_test and X_train vectors using cbind.
## 9. Add the X_test and X_train data frames by row. This stacks one dataframe on the other matching the columns.
## 10.Remove the column representing the numbers for the activities since we now have a column with text descriptions. This follows the 
##      tidy data model as the this column with the numbers repeats the column containing the string descriptions and so is not necessary.
## 11.Save the resulting 81 x 10299 data frame as a .txt file:  "finaltotaldata.txt".

## The actual R script is well documented.  Notice that I change data frame or vector names with each step but they contain part of the previous names 
## so I think the progression is easy to follow. Notice also that in the description above I use the original downloaded file names instead of
## the particular data frame name but it would be akward to constantly be changing names as I progress through the algorithm.


