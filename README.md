# Getting and Cleaning Data - Course Project

This is the course project for the Getting and Cleaning Data Coursera course.
The R script, `run_analysis.R`, does the following:

1. Adds appropriate libraries
2. Downloads the dataset if it does not already exist in the working directory - requires an internet conection
3. Loads both the training and test datasets - keeps only those columns representing a mean or standard deviation measurement
4. Loads the subject and activity for each dataset
5. Merges columns of subject, activity and training datasets
5. Merges rows both training and test datasets
6. Performs general cleanup of variable names, activity descriptions - while cleaning labels, converts `activity` into a factor
6. Converts `subject` variable into factor
7. Creates a tidy dataset that consists of the mean value of each variable for each subject and activity pair
8. Orders the tidy dataset by subject, activity

The end result is shown in the file `tidydata.txt`.
