# Getting and Cleaning Data Course Project

## Overview
The purpose of this project is to merge and clean the data of the **UCI HAR Dataset**, which contains wearable computing data collcted from Samsung Galaxy S smartphones.

The run_analysis.R script included in this project does the following:
1. Merges the training and the test sets of the UCI HAR Dataset to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Prerequisites
The script assumes that the UCI HAR Dataset is present in your current working directory, and that the original directory structure of the dataset is unchanged.

The script will also create a tidyData directory in your working directory in order to write the tidy dataset. Therefore please make sure that R has write permissions in the current working directory.

## Running the script
To run the script, just source the run_analysis.R script. It will generate the following messages as it runs:

    Starting the data cleanup...
    Checking input data...
    Reading data...
    Merging data...
    Writing data...
    Tidy dataset written to : ...your_working_dir.../tidy_data.txt
    
