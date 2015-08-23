message("Starting the data cleanup...")

## First, checking whether we have the input dataset in the working directory
message("Checking input data...")
rawDataPath <- file.path(getwd(), "UCI HAR Dataset")
if (!dir.exists(rawDataPath)) {
    message("Working directory does not contain the input dataset directory : ", "UCI HAR Dataset")
    stop("missing data")
}

## Create the tidy data directory
tidyDataPath <- file.path(getwd(), "tidyData")
if (!dir.exists(tidyDataPath)) {
    message("Creating the tidy data directory...")
    dir.create(tidyDataPath)
}

## Loading the libraries
library(dplyr)

## Reading the input data sets
message("Reading data...")

train_x <- read.table(file.path(rawDataPath, "train", "X_train.txt"))
train_y <- read.table(file.path(rawDataPath, "train", "Y_train.txt"))
train_subject <- read.table(file.path(rawDataPath, "train", "subject_train.txt"))

test_x <- read.table(file.path(rawDataPath, "test", "X_test.txt"))
test_y <- read.table(file.path(rawDataPath, "test", "Y_test.txt"))
test_subject <- read.table(file.path(rawDataPath, "test", "subject_test.txt"))

features <- read.table(file.path(rawDataPath, "features.txt"))

## Merging the data sets
message("Merging data...")

## Merge the train and test data sets together
complete_x <- rbind(train_x, test_x)
complete_y <- rbind(train_y, test_y)
complete_subjects <- rbind(train_subject, test_subject)

## Giving some proper names to the variables
names(complete_y) = c('Activity')
names(complete_subjects) = c('Subject')

feature_names <- make.names(features$V2, unique = TRUE)
names(complete_x) = feature_names

## Merge everything together
complete_data <- cbind(complete_y, complete_x)
complete_data <- cbind(complete_subjects, complete_data)

## Filter only the required columns
complete_data <- select(complete_data, Subject, Activity, contains(".mean."), contains(".std."))

## Giving proper activity names
activity_labels_readable <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Lying")
activity_levels <- seq(along = activity_labels_readable)

complete_data$Activity <- factor(complete_data$Activity, levels = activity_levels, labels = activity_labels_readable)

## Group by subject per activity and summarize by applying mean function
complete_data_by_subject_and_activity <- complete_data %>% group_by(Subject, Activity)
complete_data_summerized <- complete_data_by_subject_and_activity %>% summarise_each(funs(mean))

## Rename the variable to more readable forms
names(complete_data_summerized) <- gsub("[.][.]", "", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("[.]X", "-X-Axis", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("[.]Y", "-Y-Axis", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("[.]Z", "-Z-Axis", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("tBody", "Body", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("tGravity", "Gravity", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("fBody", "FFT-Body", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("fGravity", "FFT-Gravity", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("fGravity", "FFT-Gravity", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("Acc", "-Acceleration", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("Gyro", "-Gyro", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("Jerk", "-Jerk", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("Mag", "Magnitude", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("[.]std", "-StandardDeviation", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("[.]mean", "-Average", names(complete_data_summerized))
names(complete_data_summerized) <- gsub("BodyBody", "Body", names(complete_data_summerized))

## Writing the finalized tidy data set to file
message("Writing data...")

tidyDataFile <- file.path(tidyDataPath, "tidy_data.txt")
write.table(complete_data_summerized, tidyDataFile, row.names = FALSE, quote = FALSE)

message("Tidy dataset written to : ", tidyDataFile)