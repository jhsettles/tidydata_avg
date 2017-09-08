library(reshape2)
## 1 Merges the training and the test sets to create one data set.

#Read the activity files
activity.test <- read.table("UCI HAR Dataset/test/y_test.txt",header = F)
activity.train <- read.table("UCI HAR Dataset/train/y_train.txt",header = F)
#Read the subject files
subject.test <- read.table("UCI HAR Dataset/test/subject_test.txt",header = F)
subject.train <- read.table("UCI HAR Dataset/train/subject_train.txt",header = F)

#Read the features files
features.test <- read.table("UCI HAR Dataset/test/X_test.txt",header = F)
features.train <- read.table("UCI HAR Dataset/train/X_train.txt",header = F)


activity.type <- read.table("UCI HAR Dataset/activity_labels.txt",header = F)
features <- read.table("UCI HAR Dataset/features.txt",header = F)
#Assign column names

colnames(activity.type) <- c("activity.id","activity.type")
colnames(activity.test) <- "activity.id"
colnames(activity.train) <- "activity.id"
colnames(subject.test) <- "subject.id"
colnames(subject.train) <- "subject.id"
colnames(features.test) <- features[,2]
colnames(features.train) <- features[,2]


test.data <- cbind(features.test, subject.test, activity.test)

train.data <- cbind(features.train, subject.train, activity.train )

data <- rbind(test.data, train.data)
## 2 Extracts only the measurements on the mean and standard deviation for each measurement.


mean.std.data <- data[,grep(".*mean.*|.*std.*",colnames(data))]
mean.std.data$activity <- data$activity.id
mean.std.data$subject <- data$subject.id
## 3 Uses descriptive activity names to name the activities in the data set
mean.std.data$activity <- factor(data$activity.id, levels = activity.type[,1], labels = activity.type[,2])


## 4 Appropriately labels the data set with descriptive variable names.
names(mean.std.data)<-gsub("^t", "time", names(mean.std.data))
names(mean.std.data)<-gsub("^f", "frequency", names(mean.std.data))
names(mean.std.data)<-gsub("Acc", "Accelerometer", names(mean.std.data))
names(mean.std.data)<-gsub("Gyro", "Gyroscope", names(mean.std.data))
names(mean.std.data)<-gsub("Mag", "Magnitude", names(mean.std.data))
names(mean.std.data)<-gsub("BodyBody", "Body", names(mean.std.data))

## 5 From the data set in step 4, 
#creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.
mean.std.data$subject <- as.factor(mean.std.data$subject)

mean.std.data.melted <- melt(mean.std.data, id = c("subject", "activity"))
mean.std.mean <- dcast(mean.std.data.melted, subject + activity ~ variable, mean)
write.table(mean.std.mean, "tidydata_avg.txt", row.names = FALSE, quote = FALSE)

