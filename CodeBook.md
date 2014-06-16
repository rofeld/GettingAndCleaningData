Code Book
=========================

The "run_analysis.R" will read data which can be downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

run_analysis.R" has the following functionality.

1. Merges the training and the test sets to create one data set
    * "/train/X_train.txt" with "/test/X_test.txt"
    * "/train/subject_train.txt" with "/test/subject_test.txt"
    * "/train/y_train.txt" with "/test/y_test.txt"
2. Extracts only the measurements on the mean and standard deviation for each measurement
    * It gets list of measurements from "/features.txt"
    * Extracts only the measurements on the mean and standard deviation for each measurement
    * Applied on result data set from "/train/X_train.txt" with "/test/X_test.txt" and used as labels.
3. Uses descriptive activity names to name the activities in the data set
    * It gets activities from "/activity_labels.txt"
    * Based on activity code in result data set from "/train/y_train.txt" with "/test/y_test.txt" it joins data to the data set from "/activity_labels.txt" and replaces activity codes with activity labels.
    * Name the variable "activity"
4. Appropriately labels the data set with descriptive variable names
    * Name the variable "subject" in result data set from "/train/subject_train.txt" with "/test/subject_test.txt"
    * Merge all three results data sets from the step one above.
    * Create "tidy.data.set" data frame
5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject
    * Create "tidy.data.set.mean" which is derived from "tidy.data.set"; get mean of each column by activity and subject
    * Export "tidy.data.set.mean" data into "tidy.data.set.mean.txt" in current working directory

tidy.data.set.mean
-------------------------
### Variables

Column  | Original Name | Values
------------------ | ------------------ | ------------------
subject | | 1..30 
activity | | "laying", "sitting", "standing", "walking", "walking_downstairs", "walking_upstairs"  
tbodyacc.mean.x | tBodyAcc-mean()-X | -1..1
tbodyacc.mean.y | tBodyAcc-mean()-Y | -1..1
tbodyacc.mean.z | tBodyAcc-mean()-Z | -1..1
tbodyacc.std.x | tBodyAcc-std()-X | -1..1
tbodyacc.std.y | tBodyAcc-std()-Y | -1..1
tbodyacc.std.z | tBodyAcc-std()-Z | -1..1
tgravityacc.mean.x | tGravityAcc-mean()-X | -1..1
tgravityacc.mean.y | tGravityAcc-mean()-Y | -1..1
tgravityacc.mean.z | tGravityAcc-mean()-Z | -1..1
tyacc.std.x | tGravityAcc-std()-X | -1..1
tgravityacc.std.y | tGravityAcc-std()-Y | -1..1
tgravityacc.std.z | tGravityAcc-std()-Z | -1..1
tbodyaccjerk.mean.x | tBodyAccJerk-mean()-X | -1..1
tbodyaccjerk.mean.y | tBodyAccJerk-mean()-Y | -1..1
tbodyaccjerk.mean.z | tBodyAccJerk-mean()-Z | -1..1
tbodyaccjerk.std.x | tBodyAccJerk-std()-X | -1..1
tbodyaccjerk.std.y | tBodyAccJerk-std()-Y | -1..1
tbodyaccjerk.std.z | tBodyAccJerk-std()-Z | -1..1
tbodygyro.mean.x | tBodyGyro-mean()-X | -1..1
tbodygyro.mean.y | tBodyGyro-mean()-Y | -1..1
tbodygyro.mean.z | tBodyGyro-mean()-Z | -1..1
tbodygyro.std.x | tBodyGyro-std()-X | -1..1
tbodygyro.std.y | tBodyGyro-std()-Y | -1..1
tbodygyro.std.z | tBodyGyro-std()-Z | -1..1
tbodygyrojerk.mean.x | tBodyGyroJerk-mean()-X | -1..1
tbodygyrojerk.mean.y | tBodyGyroJerk-mean()-Y | -1..1
tbodygyrojerk.mean.z | tBodyGyroJerk-mean()-Z | -1..1
tbodygyrojerk.std.x | tBodyGyroJerk-std()-X | -1..1
tbodygyrojerk.std.y | tBodyGyroJerk-std()-Y | -1..1
tbodygyrojerk.std.z | tBodyGyroJerk-std()-Z | -1..1
tbodyaccmag.mean | tBodyAccMag-mean() | -1..1
tbodyaccmag.std | tBodyAccMag-std() | -1..1
tgravityaccmag.mean | tGravityAccMag-mean() | -1..1
tgravityaccmag.std | tGravityAccMag-std() | -1..1
tbodyaccjerkmag.mean | tBodyAccJerkMag-mean() | -1..1
tbodyaccjerkmag.std | tBodyAccJerkMag-std() | -1..1
tbodygyromag.mean | tBodyGyroMag-mean() | -1..1
tbodygyromag.std | tBodyGyroMag-std() | -1..1
tbodygyrojerkmag.mean | tBodyGyroJerkMag-mean() | -1..1
tbodygyrojerkmag.std | tBodyGyroJerkMag-std() | -1..1
fbodyacc.mean.x | fBodyAcc-mean()-X | -1..1
fbodyacc.mean.y | fBodyAcc-mean()-Y | -1..1
fbodyacc.mean.z | fBodyAcc-mean()-Z | -1..1
fbodyacc.std.x | fBodyAcc-std()-X | -1..1
fbodyacc.std.y | fBodyAcc-std()-Y | -1..1
fbodyacc.std.z | fBodyAcc-std()-Z | -1..1
fbodyaccjerk.mean.x | fBodyAccJerk-mean()-X | -1..1
fbodyaccjerk.mean.y | fBodyAccJerk-mean()-Y | -1..1
fbodyaccjerk.mean.z | fBodyAccJerk-mean()-Z | -1..1
fbodyaccjerk.std.x | fBodyAccJerk-std()-X | -1..1
fbodyaccjerk.std.y | fBodyAccJerk-std()-Y | -1..1
fbodyaccjerk.std.z | fBodyAccJerk-std()-Z | -1..1
fbodygyro.mean.x | fBodyGyro-mean()-X | -1..1
fbodygyro.mean.y | fBodyGyro-mean()-Y | -1..1
fbodygyro.mean.z | fBodyGyro-mean()-Z | -1..1
fbodygyro.std.x | fBodyGyro-std()-X | -1..1
fbodygyro.std.y | fBodyGyro-std()-Y | -1..1
fbodygyro.std.z | fBodyGyro-std()-Z | -1..1
fbodyaccmag.mean | fBodyAccMag-mean() | -1..1
fbodyaccmag.std | fBodyAccMag-std() | -1..1
fbodybodyaccjerkmag.mean | fBodyBodyAccJerkMag-mean() | -1..1
fbodybodyaccjerkmag.std | fBodyBodyAccJerkMag-std() | -1..1
fbodybodygyromag.mean | fBodyBodyGyroMag-mean() | -1..1
fbodybodygyromag.std | fBodyBodyGyroMag-std() | -1..1
fbodybodygyrojerkmag.mean | fBodyBodyGyroJerkMag-mean() | -1..1
fbodybodygyrojerkmag.std | fBodyBodyGyroJerkMag-std() | -1..1
### Structure
```
> str(tidy.data.set.mean)
'data.frame':    180 obs. of  68 variables:
 $ activity                 : chr  "laying" "sitting" "standing" "walking" ...
 $ subject                  : int  1 1 1 1 1 1 2 2 2 2 ...
 $ tbodyacc.mean.x          : num  0.222 0.261 0.279 0.277 0.289 ...
 $ tbodyacc.mean.y          : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
 $ tbodyacc.mean.z          : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
 $ tbodyacc.std.x           : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
 $ tbodyacc.std.y           : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
 $ tbodyacc.std.z           : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
 $ tgravityacc.mean.x       : num  -0.249 0.832 0.943 0.935 0.932 ...
 $ tgravityacc.mean.y       : num  0.706 0.204 -0.273 -0.282 -0.267 ...
 $ tgravityacc.mean.z       : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
 $ tgravityacc.std.x        : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
 $ tgravityacc.std.y        : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
 $ tgravityacc.std.z        : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
 $ tbodyaccjerk.mean.x      : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
 $ tbodyaccjerk.mean.y      : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
 $ tbodyaccjerk.mean.z      : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
 $ tbodyaccjerk.std.x       : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
 $ tbodyaccjerk.std.y       : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
 $ tbodyaccjerk.std.z       : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
 $ tbodygyro.mean.x         : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
 $ tbodygyro.mean.y         : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
 $ tbodygyro.mean.z         : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
 $ tbodygyro.std.x          : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
 $ tbodygyro.std.y          : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
 $ tbodygyro.std.z          : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
 $ tbodygyrojerk.mean.x     : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
 $ tbodygyrojerk.mean.y     : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
 $ tbodygyrojerk.mean.z     : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
 $ tbodygyrojerk.std.x      : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
 $ tbodygyrojerk.std.y      : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
 $ tbodygyrojerk.std.z      : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
 $ tbodyaccmag.mean         : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tbodyaccmag.std          : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tgravityaccmag.mean      : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
 $ tgravityaccmag.std       : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
 $ tbodyaccjerkmag.mean     : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
 $ tbodyaccjerkmag.std      : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
 $ tbodygyromag.mean        : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
 $ tbodygyromag.std         : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
 $ tbodygyrojerkmag.mean    : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
 $ tbodygyrojerkmag.std     : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
 $ fbodyacc.mean.x          : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
 $ fbodyacc.mean.y          : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
 $ fbodyacc.mean.z          : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
 $ fbodyacc.std.x           : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
 $ fbodyacc.std.y           : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
 $ fbodyacc.std.z           : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
 $ fbodyaccjerk.mean.x      : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
 $ fbodyaccjerk.mean.y      : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
 $ fbodyaccjerk.mean.z      : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
 $ fbodyaccjerk.std.x       : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
 $ fbodyaccjerk.std.y       : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
 $ fbodyaccjerk.std.z       : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
 $ fbodygyro.mean.x         : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
 $ fbodygyro.mean.y         : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
 $ fbodygyro.mean.z         : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
 $ fbodygyro.std.x          : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
 $ fbodygyro.std.y          : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
 $ fbodygyro.std.z          : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
 $ fbodyaccmag.mean         : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
 $ fbodyaccmag.std          : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
 $ fbodybodyaccjerkmag.mean : num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
 $ fbodybodyaccjerkmag.std  : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
 $ fbodybodygyromag.mean    : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
 $ fbodybodygyromag.std     : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
 $ fbodybodygyrojerkmag.mean: num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
 $ fbodybodygyrojerkmag.std : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
```

Below is auto-generated codebook for tidy.data.set data frame by using "codebook" method from "memisc" package.



```r
source("run_analysis.R")
library(memisc)
```

```
## Loading required package: lattice
## Loading required package: MASS
## 
## Attaching package: 'memisc'
## 
## The following objects are masked from 'package:stats':
## 
##     contr.sum, contr.treatment, contrasts
## 
## The following object is masked from 'package:base':
## 
##     as.array
```

```r
codebook(data.set(tidy.data.set))
```

```
## ===========================================================================
## 
##    tidy.data.set.subject
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: integer
##    Measurement: interval
## 
##             Min:   1.000
##             Max:  30.000
##            Mean:  16.146
##        Std.Dev.:   8.679
##        Skewness:  -0.123
##        Kurtosis:  -1.187
## 
## ===========================================================================
## 
##    tidy.data.set.activity
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: character
##    Measurement: nominal
## 
##    Values and labels     N     Percent  
##                                         
##         (unlab.vld.) 10299   100.0 100.0
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.274
##        Std.Dev.:   0.068
##        Skewness:  -3.490
##        Kurtosis:  50.595
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:   -1.000
##             Max:    1.000
##            Mean:   -0.018
##        Std.Dev.:    0.037
##        Skewness:   -0.429
##        Kurtosis:  181.544
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.109
##        Std.Dev.:   0.053
##        Skewness:   1.759
##        Kurtosis:  84.130
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.608
##        Std.Dev.:   0.439
##        Skewness:   0.637
##        Kurtosis:  -0.925
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.510
##        Std.Dev.:   0.500
##        Skewness:   0.435
##        Kurtosis:  -1.326
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyacc.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.613
##        Std.Dev.:   0.404
##        Skewness:   0.661
##        Kurtosis:  -0.656
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.669
##        Std.Dev.:   0.515
##        Skewness:  -1.629
##        Kurtosis:   0.917
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.004
##        Std.Dev.:   0.379
##        Skewness:   1.167
##        Kurtosis:   0.406
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.092
##        Std.Dev.:   0.334
##        Skewness:   0.715
##        Kurtosis:   0.673
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:   -1.000
##             Max:    1.000
##            Mean:   -0.965
##        Std.Dev.:    0.078
##        Skewness:   11.134
##        Kurtosis:  183.961
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:   -1.000
##             Max:    1.000
##            Mean:   -0.954
##        Std.Dev.:    0.085
##        Skewness:    8.782
##        Kurtosis:  123.347
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityacc.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.939
##        Std.Dev.:   0.102
##        Skewness:   6.928
##        Kurtosis:  76.993
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.079
##        Std.Dev.:   0.176
##        Skewness:   0.113
##        Kurtosis:   4.727
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.008
##        Std.Dev.:   0.165
##        Skewness:  -0.013
##        Kurtosis:   4.818
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.005
##        Std.Dev.:   0.156
##        Skewness:  -0.083
##        Kurtosis:   5.262
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.640
##        Std.Dev.:   0.409
##        Skewness:   0.665
##        Kurtosis:  -0.895
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.608
##        Std.Dev.:   0.433
##        Skewness:   0.643
##        Kurtosis:  -0.976
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerk.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.763
##        Std.Dev.:   0.278
##        Skewness:   1.050
##        Kurtosis:   0.499
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.031
##        Std.Dev.:   0.183
##        Skewness:  -0.159
##        Kurtosis:   3.523
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.075
##        Std.Dev.:   0.134
##        Skewness:   0.194
##        Kurtosis:   5.922
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:   0.088
##        Std.Dev.:   0.135
##        Skewness:  -0.043
##        Kurtosis:  10.083
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.721
##        Std.Dev.:   0.301
##        Skewness:   0.795
##        Kurtosis:  -0.240
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.683
##        Std.Dev.:   0.357
##        Skewness:   0.999
##        Kurtosis:   0.270
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyro.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.654
##        Std.Dev.:   0.373
##        Skewness:   0.778
##        Kurtosis:  -0.207
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.097
##        Std.Dev.:   0.128
##        Skewness:   0.139
##        Kurtosis:   6.439
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.042
##        Std.Dev.:   0.114
##        Skewness:   0.048
##        Kurtosis:   8.184
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.055
##        Std.Dev.:   0.129
##        Skewness:   0.052
##        Kurtosis:   6.771
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.731
##        Std.Dev.:   0.304
##        Skewness:   0.878
##        Kurtosis:  -0.015
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.786
##        Std.Dev.:   0.273
##        Skewness:   1.600
##        Kurtosis:   3.091
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerk.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.740
##        Std.Dev.:   0.302
##        Skewness:   0.960
##        Kurtosis:   0.269
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.548
##        Std.Dev.:   0.467
##        Skewness:   0.408
##        Kurtosis:  -1.408
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.591
##        Std.Dev.:   0.429
##        Skewness:   0.617
##        Kurtosis:  -0.909
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityaccmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.548
##        Std.Dev.:   0.467
##        Skewness:   0.408
##        Kurtosis:  -1.408
## 
## ===========================================================================
## 
##    tidy.data.set.tgravityaccmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.591
##        Std.Dev.:   0.429
##        Skewness:   0.617
##        Kurtosis:  -0.909
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerkmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.649
##        Std.Dev.:   0.389
##        Skewness:   0.594
##        Kurtosis:  -1.045
## 
## ===========================================================================
## 
##    tidy.data.set.tbodyaccjerkmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.628
##        Std.Dev.:   0.417
##        Skewness:   0.675
##        Kurtosis:  -0.868
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyromag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.605
##        Std.Dev.:   0.400
##        Skewness:   0.517
##        Kurtosis:  -1.075
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyromag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.663
##        Std.Dev.:   0.349
##        Skewness:   0.811
##        Kurtosis:  -0.164
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerkmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.762
##        Std.Dev.:   0.277
##        Skewness:   0.986
##        Kurtosis:   0.426
## 
## ===========================================================================
## 
##    tidy.data.set.tbodygyrojerkmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.778
##        Std.Dev.:   0.272
##        Skewness:   1.464
##        Kurtosis:   2.538
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.623
##        Std.Dev.:   0.421
##        Skewness:   0.618
##        Kurtosis:  -0.989
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.537
##        Std.Dev.:   0.482
##        Skewness:   0.493
##        Kurtosis:  -1.231
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.665
##        Std.Dev.:   0.359
##        Skewness:   0.736
##        Kurtosis:  -0.474
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.603
##        Std.Dev.:   0.447
##        Skewness:   0.676
##        Kurtosis:  -0.811
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.528
##        Std.Dev.:   0.480
##        Skewness:   0.443
##        Kurtosis:  -1.297
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyacc.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.618
##        Std.Dev.:   0.399
##        Skewness:   0.715
##        Kurtosis:  -0.473
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.657
##        Std.Dev.:   0.390
##        Skewness:   0.690
##        Kurtosis:  -0.814
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.629
##        Std.Dev.:   0.407
##        Skewness:   0.635
##        Kurtosis:  -0.983
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.744
##        Std.Dev.:   0.298
##        Skewness:   1.041
##        Kurtosis:   0.490
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.655
##        Std.Dev.:   0.393
##        Skewness:   0.675
##        Kurtosis:  -0.870
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.612
##        Std.Dev.:   0.434
##        Skewness:   0.687
##        Kurtosis:  -0.863
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccjerk.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.781
##        Std.Dev.:   0.260
##        Skewness:   1.109
##        Kurtosis:   0.735
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.mean.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.672
##        Std.Dev.:   0.351
##        Skewness:   0.740
##        Kurtosis:  -0.377
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.mean.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.706
##        Std.Dev.:   0.336
##        Skewness:   1.072
##        Kurtosis:   0.644
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.mean.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.644
##        Std.Dev.:   0.382
##        Skewness:   0.699
##        Kurtosis:  -0.592
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.std.x
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.739
##        Std.Dev.:   0.286
##        Skewness:   0.869
##        Kurtosis:  -0.017
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.std.y
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.674
##        Std.Dev.:   0.370
##        Skewness:   1.075
##        Kurtosis:   0.536
## 
## ===========================================================================
## 
##    tidy.data.set.fbodygyro.std.z
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.690
##        Std.Dev.:   0.337
##        Skewness:   0.892
##        Kurtosis:   0.281
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.586
##        Std.Dev.:   0.445
##        Skewness:   0.653
##        Kurtosis:  -0.840
## 
## ===========================================================================
## 
##    tidy.data.set.fbodyaccmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.660
##        Std.Dev.:   0.355
##        Skewness:   0.652
##        Kurtosis:  -0.788
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodyaccjerkmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.621
##        Std.Dev.:   0.425
##        Skewness:   0.680
##        Kurtosis:  -0.838
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodyaccjerkmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.640
##        Std.Dev.:   0.406
##        Skewness:   0.725
##        Kurtosis:  -0.751
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodygyromag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.697
##        Std.Dev.:   0.324
##        Skewness:   0.897
##        Kurtosis:   0.159
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodygyromag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.700
##        Std.Dev.:   0.310
##        Skewness:   0.897
##        Kurtosis:   0.199
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodygyrojerkmag.mean
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.780
##        Std.Dev.:   0.268
##        Skewness:   1.398
##        Kurtosis:   2.194
## 
## ===========================================================================
## 
##    tidy.data.set.fbodybodygyrojerkmag.std
## 
## ---------------------------------------------------------------------------
## 
##    Storage mode: double
##    Measurement: interval
## 
##             Min:  -1.000
##             Max:   1.000
##            Mean:  -0.792
##        Std.Dev.:   0.259
##        Skewness:   1.619
##        Kurtosis:   3.382
```

