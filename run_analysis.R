#run_analysis.R 
#by rofeld

#The code should have a file run_analysis.R in the main directory that can be run as long as the Samsung data is in your working directory. 
wd <- getwd() #get working directory; it should be inside of "UCI HAR Dataset" folder




### 1. Merges the training and the test sets to create one data set. ###
df_trainX <- read.table(paste(wd,"/train/X_train.txt", sep = ""))
df_testX <- read.table(paste(wd,"/test/X_test.txt", sep = ""))
df_mergeX <- rbind(df_trainX,df_testX) #combine two data sets row based.


df_trainS <- read.table(paste(wd,"/train/subject_train.txt", sep = ""))
df_testS <- read.table(paste(wd,"/test/subject_test.txt", sep = ""))
df_mergeS <- rbind(df_trainS, df_testS) #combine two data sets row based.

df_trainY <- read.table(paste(wd,"/train/y_train.txt", sep = ""))
df_testY <- read.table(paste(wd,"/test/y_test.txt", sep = ""))
df_mergeY <- rbind(df_trainY, df_testY) #combine two data sets row based.

### 2 Extracts only the measurements on the mean and standard deviation for each measurement. ### 

df_features <- read.table(paste(wd,"/features.txt", sep = ""))
df_features2 <- as.data.frame(df_features$V2) #get only column with labels
#get column indexes which match either "mean" or "std"
my_indx <- which(apply(df_features2, 2, function(x) grepl("mean\\(\\)|std\\(\\)", x)))

df_mergeX <- df_mergeX[, my_indx] #get data for variables where my_indx == TRUE
names(df_mergeX) <- df_features2[my_indx,1] #name variables
names(df_mergeX) <- tolower(gsub("\\(|\\)", "", names(df_mergeX))) #convert variables to lower case
names(df_mergeX) <- gsub("-",".",names(df_mergeX)) #replace "-" with "." in variable names as it is easier to read.


### 3 Uses descriptive activity names to name the activities in the data set. ### 

df_activities <- read.table(paste(wd,"/activity_labels.txt", sep = "")) #load activities
df_activities[, 2] = tolower(as.character(df_activities[, 2])) 
df_mergeY[,1] = df_activities[df_mergeY[,1], 2] #replace numeric with matching label
names(df_mergeY) <- "activity" #name the variable

### 4 Appropriately labels the data set with descriptive variable names. ###


names(df_mergeS) = "subject"  #name the variable

#get tidy.data.set
tidy.data.set <- cbind(df_mergeS, df_mergeY, df_mergeX)
#write.csv(tidy.data.set, "tidy.data.set.csv") #write out

### 5 Creates a second, independent tidy data set with the average of each variable for each activity and each subject. ###
#get list of all columns we need to calculate average for and exclude columns used in group by - subject and activity
cols <- !colnames(tidy.data.set) %in% c("subject", "activity",row.names = FALSE)
#get mean of each column by activity and subject
tidy.data.set.mean <- aggregate(tidy.data.set[, cols], list(activity = tidy.data.set$activity, subject = tidy.data.set$subject), FUN = "mean")
write.csv(tidy.data.set.mean, "tidy.data.set.mean.txt",row.names = FALSE)




