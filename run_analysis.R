message("Starting the data cleanup...")
rm(list = ls()) ## clean the environment

message("Checking input data...")
rawDataPath <- file.path(getwd(), "UCI HAR Dataset")
if (!dir.exists(rawDataPath)) {
    message("Working directory does not contain the input dataset directory : ", "UCI HAR Dataset")
    stop("missing data")
}

tidyDataPath <- file.path(getwd(), "tidyData")
if (!dir.exists(tidyDataPath)) {
    message("Creating the tidy data directory...")
    dir.create(tidyDataPath)
}

message("Reading data...")

train_x <- read.table(file.path(rawDataPath, "train", "X_train.txt"))
train_y <- read.table(file.path(rawDataPath, "train", "Y_train.txt"))
train_subject <- read.table(file.path(rawDataPath, "train", "subject_train.txt"))

test_x <- read.table(file.path(rawDataPath, "test", "X_test.txt"))
test_y <- read.table(file.path(rawDataPath, "test", "Y_test.txt"))
test_subject <- read.table(file.path(rawDataPath, "test", "subject_test.txt"))

message("Merging data...")

complete_x <- rbind(train_x, test_x)
complete_y <- rbind(train_y, test_y)
complete_subjects <- rbind(train_subject, test_subject)

names(complete_y) = c('Activity')
names(complete_subjects) = c('Subject')

complete_data <- cbind(complete_y, complete_x)
complete_data <- cbind(complete_subjects, complete_data)

activity_labels_readable <- c("Walking", "Walking_Upstairs", "Walking_Downstairs", "Sitting", "Standing", "Lying")
activity_levels <- seq(along = activity_labels_readable)

complete_data$Activity <- factor(complete_data$Activity, levels = activity_levels, labels = activity_labels_readable)

message("Writing data...")

tidyDataFile <- file.path(tidyDataPath, "tidy_data.txt")
write.table(complete_data, tidyDataFile, row.names = FALSE, quote = FALSE, sep = ",")

message("Tidy dataset written to : ", tidyDataFile)