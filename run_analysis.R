library(reshape2)

# Source of data for this project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
# Download the data set if missing

if(!file.exists("dataset.zip")){
    download.file(url='https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',destfile="dataset.zip")
}

unzip("dataset.zip")

# Set working directory

setwd("./UCI HAR Dataset")

# Merges the training and the test sets to create one data set.

labels.train <- read.table("train/y_train.txt", col.names="label")
subjects.train <- read.table("train/subject_train.txt", col.names="subject")
data.train <- read.table("train/X_train.txt")
labels.test <- read.table("test/y_test.txt", col.names="label")
subjects.test <- read.table("test/subject_test.txt", col.names="subject")
data.test <- read.table("test/X_test.txt")

data <- rbind(cbind(subjects.test, labels.test, data.test), cbind(subjects.train, labels.train, data.train))

# Extracts only the measurements on the mean and standard deviation for each measurement.

features <- read.table("features.txt", strip.white=TRUE, stringsAsFactors=FALSE)
features <- features[grep("mean\\(\\)|std\\(\\)", features$V2), ]
data <- data[, c(1, 2, features$V1+2)]

# Uses descriptive activity names to name the activities in the data set.

labels <- read.table("activity_labels.txt", stringsAsFactors=FALSE)
data$label <- labels[data$label, 2]

# Appropriately labels the data set with descriptive activity names.

colnames <- c("subject", "activity", features$V2)
colnames <- tolower(gsub("[^[:alpha:]]", "", colnames))
colnames(data) <- colnames

# Creates a 2nd, independent tidy data set with the average of each variable for each activity and each subject.

dataset <- melt(data, id.vars=c("subject", "activity"))
dataset <- dcast(dataset, subject + activity ~ variable, mean)

# Reset working directory

setwd("../")

write.table(dataset, "tidy_data.txt", row.names=FALSE)