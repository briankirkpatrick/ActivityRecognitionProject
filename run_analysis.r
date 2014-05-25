# Comments labeled (instruction) were provided as direct guidance
# for this assignment for the Getting and Cleaning Data course
# offered by Johns Hopkins and Coursera.org

library(plyr)
library(reshape2)

# (instruction) Merge the training and the test sets to create one data set.
  
  # (instruction) Appropriately label the data set with descriptive activity names. 

    #obtain list of variable names from the features.txt file
    features <- read.table("./UCI HAR Dataset/features.txt")
    varNames <- unlist(lapply(features[, 2],as.character))
  
  #merge the test set files
  subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt", col.names = "subject.id.number")
  X_test <- read.table("./UCI HAR Dataset/test/X_test.txt", col.names = varNames)
  y_test <- read.table("./UCI HAR Dataset/test/y_test.txt", col.names = "activity")
  
  test_set <- data.frame(subject_test, y_test, X_test)
  
  #merge the training set files
  subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt", col.names = "subject.id.number")
  X_train <- read.table("./UCI HAR Dataset/train/X_train.txt", col.names = varNames)
  y_train <- read.table("./UCI HAR Dataset/train/y_train.txt", col.names = "activity")
  
  train_set <- data.frame(subject_train, y_train, X_train)
  
  # test to make sure variable names are aligned before combining data sets
  # namecheck should be equal to 0
  nametest <- data.frame(names(test_set), names(train_set))
  namecheck <- nametest[nametest$names.test_set. != nametest$names.train_set. , ]
  namecheck

  # combine the test_set and train_set if namecheck returns 0 results
  combined_set <- rbind(test_set, train_set)
  
# (instruction) Use descriptive activity names to name the activities in the data set
  
  # get the names of the activities from the provided files
  # create two vectors of equal lengths with activity names and numbers
  activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
  actNames <- unlist(lapply(activity_labels[, 2], as.character))
  actNamesL <- gsub("_","", unlist(lapply(actNames, tolower)))
  actNumbers <- c(1, 2, 3, 4, 5, 6)
  
  # use mapvalues from the plyr package to replace the numbers with the names
  combined_set$activity <- mapvalues(combined_set$activity, actNumbers, actNamesL, warn_missing = TRUE)
    
# (instruction) Extract only the measurements on the mean and standard deviation for each measurement.

  # get list of variables representing mean or std dev
  # expecting 66 results (tested by the length function)
  # 3 mean and 3 std for each XYZ var and 1 mean and 1 std for each Mag var
  var_names <- names(combined_set)
  var_MSlist <- grep("mean\\.\\.|std\\.\\.", var_names, ignore.case = TRUE)

  # list to double check variable names selected
  length(var_MSlist)  
  var_names[var_MSlist]
  
  # test showed 67 results, final result of angle measure not intended
  # slicing out last unintended result and adding
  var_MSlist <- var_MSlist[1:66]
  
  # add columns 1 and 2 to the column vector to use for final dataset
  var_MSlist <- c(1, 2, var_MSlist)
  
  # create reduced data set containing only intended variables
  mean_std_set <- combined_set[ , var_MSlist]

# (instruction) Create a second, independent tidy data set with the average of each variable for each activity and each subject.

  #use melt from reshape 2 package to make a tall data set
  dataMelt <- melt(mean_std_set, id = names(mean_std_set)[1:2], measure.vars = names(mean_std_set)[3:68])
  
  #use dcast to reshape and summarize the data for the mean of each variable by subject by activity
  summaryData <- dcast(dataMelt, subject.id.number + activity ~ variable, mean)
  
  #adjust variable names of final set to remove unneeded periods and convert directional marker to lower case
  names(summaryData) <- gsub("\\.\\.\\.","\\.", names(summaryData))
  names(summaryData) <- gsub("\\.\\.","", names(summaryData))
  names(summaryData) <- gsub("X", "x", names(summaryData))  
  names(summaryData) <- gsub("Y", "y", names(summaryData))
  names(summaryData) <- gsub("Z", "z", names(summaryData))
  names(summaryData) <- gsub("BodyBody", "Body", names(summaryData))
  
  #output the data set to a txt file
  write.table(summaryData, "./tidy_data.txt")

print("Script Completed")
