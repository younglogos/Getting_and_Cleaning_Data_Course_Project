input <- paste0(getwd(), "/getdata_projectfiles_UCI HAR Dataset.zip")
output <- paste0(getwd(), "/getdata_projectfiles_UCI HAR tidyData.txt")

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", input)

unzip(input, list = T)

features <- read.table(unz(input, "UCI HAR Dataset/features.txt"), header=F)
features <- as.character(features[,2])
activityLabels <- read.table(unz(input, "UCI HAR Dataset/activity_labels.txt"), header = F)
activityLabels <- as.character(activityLabels[,2])
dataTrainX <- read.table(unz(input, "UCI HAR Dataset/train/X_train.txt"), header = F)
dataTrainY <- read.table(unz(input, "UCI HAR Dataset/train/y_train.txt"), header = F)
dataTrainSubject <- read.table(unz(input, "UCI HAR Dataset/train/subject_train.txt"), header = F)
dataTestX <- read.table(unz(input, "UCI HAR Dataset/test/X_test.txt"), header = F)
dataTestY <- read.table(unz(input, "UCI HAR Dataset/test/y_test.txt"), header = F)
dataTestSubject <- read.table(unz(input, "UCI HAR Dataset/test/subject_test.txt"), header = F)

dataTrain <- data.frame(dataTrainSubject, dataTrainY, dataTrainX)
dataTest <- data.frame(dataTestSubject, dataTestY, dataTestX)

names(dataTrain) <- c(c("subject", "activity"), features)
names(dataTest) <- c(c("subject", "activity"), features)

# 1. Merge the training and the test sets to create one data set
data <- rbind(dataTrain, dataTest)

# 2. Extract only measurements on the mean and standard deviation for each measurement
dataExtr <- data[, colnames(data) %in% c("subject", "activity", grep("mean()|std()", colnames(data), value=TRUE))]

# 3. Use descriptive activity names to name the activities in the data set
dataExtr$activity <- activityLabels[dataExtr$activity]

# 4. Approriately label the data set with descriptive variable names
## unique(gsub("-(mean|std)().*", "", names(dataExtr)[-c(1:2)]))
names(dataExtr)[-c(1:2)] <- gsub("^t", "time", names(dataExtr)[-c(1:2)])
names(dataExtr)[-c(1:2)] <- gsub("^f", "frequency", names(dataExtr)[-c(1:2)])
names(dataExtr)[-c(1:2)] <- gsub("Acc", "Accelerometer", names(dataExtr)[-c(1:2)])
names(dataExtr)[-c(1:2)] <- gsub("Gyro", "Gyroscope", names(dataExtr)[-c(1:2)])
names(dataExtr)[-c(1:2)] <- gsub("Mag", "Magnitute", names(dataExtr)[-c(1:2)])
names(dataExtr)[-c(1:2)] <- gsub("BodyBody", "Body", names(dataExtr)[-c(1:2)])

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidyData <- aggregate(.~ subject + activity, dataExtr, mean)

# create txt file of tidy data
write.table(tidyData, file = output, row.names = FALSE)
