Project-for-Get-and-Clean-data-course-Nov-2014
==============================================

This repository contains the appropriate files as requested in the project statement for the Get and Clean data course , Coursera, Nov 2014
README for Getting and Cleaning Data Coursera Project, Nov 2014
Donald Hirst is reponsible for this travesty, which hopefully is useful.  There is data which is owned by the orignal authors so see the website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones. Reference them, not me, as they are the owners of the information
and I am only a user.  My apologies to them if I mess something up. The information in quotes is copied from the website.

"Data Set Information:
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person
performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we
captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been
video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70%
of the volunteers was selected for generating the training data and 30% the test data.
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in
fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which
has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz
cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time
and frequency domain.
Check the README.txt file for further details about this dataset.
Attribute Information:
For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment."


Actually, there are more files than would be assumed from the above discussion.  See my Codebook for a description of the files I use in this exercise.
There is only one script which does all the work. Only one is required by the instructions.  And only one data set is produced, the last tidy data set as
only one is requested.  The R script, "run_analysis.R" takes the data downloaded into the working directory and outputs the required data set. The data set may be downloaded from the link referenced above.
