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
train_subject <- read.table(file.path(rawDataPath, "train", "Y_train.txt"))

test_x <- read.table(file.path(rawDataPath, "test", "X_test.txt"))
test_y <- read.table(file.path(rawDataPath, "test", "Y_test.txt"))
test_subject <- read.table(file.path(rawDataPath, "test", "Y_test.txt"))