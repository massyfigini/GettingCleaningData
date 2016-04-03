# Instruction for R script
# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.


#---------------------------------------------------------------------------
# intro code (My O.S. is Windows)
#---------------------------------------------------------------------------

# open library plyr
library(plyr)

# read and store in a variable files of the directory "train"
training_x <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\train\\X_train.txt")
training_y <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\ HAR Dataset\\train\\y_train.txt")
training_subject <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\train\\subject_train.txt")

# read and store in a variable files of the directory "test"
test_x <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\test\\X_test.txt")
test_y <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\test\\y_test.txt")
test_subject <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\test\\subject_test.txt")

# read and store in a variable file "features"
features <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\features.txt")

# read and store in a variable file "activity"
activity <- read.table("D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\UCI HAR Dataset\\activity_labels.txt")


#--------------------------------------------------------------------------------
# POINT 1 TO 4. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each 
#    measurement.
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
#--------------------------------------------------------------------------------

# create one data set "x"
x <- rbind(training_x, test_x)

# create one data set "y"
y <- rbind(training_y, test_y)

# create one data set "subject"
subject <- rbind(training_subject, test_subject)

# get only columns with mean() or std() in their names
mean_sd <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the columns of x
x <- x[, mean_sd]

# correct the column names of x
names(x) <- features[mean_sd, 2]

# associate values of y with activity names
y[, 1] <- activity[y[, 1], 2]

# correct the column name of y
names(y) <- "activity"

# correct the column name
names(subject) <- "subject"

# bind all the data in a single data set
all <- cbind(x, y, subject)


#--------------------------------------------------------------------------------
# POINT 5
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
#--------------------------------------------------------------------------------

# take only the first 66 columns (the last 2 are activity and subject)
averages <- ddply(all, .(subject, activity), function(x) colMeans(x[, 1:66]))

# export data in a txt
write.table(averages, "D:\\Education\\Data Science Specialization\\3 Getting and Cleaning Data\\Course Project\\averages.txt", row.name=FALSE)
