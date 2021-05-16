Code book

The independent tidy dataset(independent_tidy_DS.txt) 

subjectID - ID of person who participate the experiments. This integer value bounded within [1,30]

activity - Type of activity of the volunteer which was monitored. There are 6 types:

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING


66 variables corresponding to the mean and standard deviation for each measurement:

t.body.acc.mean.x mean of time domain signal of body acceleration in X axis
t.body.acc.mean.y mean of time domain signal of body acceleration in Y axis
t.body.acc.mean.z mean of time domain signal of body acceleration in Z axis
t.body.acc.std.x standard deviation of time domain signal of body acceleration in X axis
t.body.acc.std.y standard deviation of time domain signal of body acceleration in Y axis
t.body.acc.std.z standard deviation of time domain signal of body acceleration in Z axis
t.gravity.acc.mean.x mean of time domain signal of gravity acceleration in X axis
t.gravity.acc.mean.y mean of time domain signal of gravity acceleration in Y axis
t.gravity.acc.mean.z mean of time domain signal of gravity acceleration in Z axis
t.gravity.acc.std.x standard deviation of time domain signal of gravity acceleration in X axis
t.gravity.acc.std.y standard deviation of time domain signal of gravity acceleration in Y axis
t.gravity.acc.std.z standard deviation of time domain signal of gravity acceleration in Z axis
t.body.acc.jerk.mean.x mean of obtaining Jerk signal from time domain signal of body accelaration in X axis
t.body.acc.jerk.mean.y mean of obtaining Jerk signal from time domain signal of body accelaration in Y axis
t.body.acc.jerk.mean.z mean of obtaining Jerk signal from time domain signal of body accelaration in Z axis
t.body.acc.jerk.std.x standard deviation of obtaining Jerk signal from time domain signal of body accelaration in X axis
t.body.acc.jerk.std.y standard deviation of obtaining Jerk signal from time domain signal of body accelaration in X axis
t.body.acc.jerk.std.z standard deviation of obtaining Jerk signal from time domain signal of body accelaration in X axis
t.body.gyro.mean.x mean of time domain signal of body gyro in X axis
t.body.gyro.mean.y mean of time domain signal of body gyro in Y axis
t.body.gyro.mean.z mean of time domain signal of body gyro in Z axis
t.body.gyro.std.x standard deviation of time domain signal of body gyro in X axis
t.body.gyro.std.y standard deviation of time domain signal of body gyro in Y axis
t.body.gyro.std.z standard deviation of time domain signal of body gyro in Z axis
t.body.gyro.jerk.mean.x mean of obtaining Jerk signal from body gyro in X axis
t.body.gyro.jerk.mean.y mean of obtaining Jerk signal from body gyro in Y axis
t.body.gyro.jerk.mean.z mean of obtaining Jerk signal from body gyro in Z axis
t.body.gyro.jerk.std.x standard deviation of obtaining Jerk signal from time domain signal of body gyro in X axis
t.body.gyro.jerk.std.y standard deviation of obtaining Jerk signal from time domain signal of body gyro in Y axis
t.body.gyro.jerk.std.z standard deviation of obtaining Jerk signal from time domain signal of body gyro in Z axis
t.body.acc.mag.mean mean of magnitude from time domain signal of body accelaration
t.body.acc.mag.std standard deviation of magnitude from time domain signal of body accelaration
t.gravity.acc.mag.mean mean of magnitude from time domain signal of gravity accelaration
t.gravity.acc.mag.std standard deviation of magnitude from time domain signal of gravity accelaration
t.body.acc.jerk.mag.mean mean of magnitude from obtaining Jerk signal of time domain signal of gravity accelaration
t.body.acc.jerk.mag.std standard deviation of magnitude from obtaining Jerk signal of time domain signal of gravity accelaration
t.body.gyro.mag.mean mean of magnitude from time domain signal of body gyro
t.body.gyro.mag.std standard deviation of magnitude from time domain signal of body gyro
t.body.gyro.jerk.mag.mean mean of magnitude from obtaining Jerk signal of time domain signal of body gyro
t.body.gyro.jerk.mag.std standard deviation of magnitude from obtaining Jerk signal of time domain signal of body gyro
f.body.acc.mean.x mean of frequency domain signals of body accelaration in X axis
f.body.acc.mean.y mean of frequency domain signals of body accelaration in Y axis
f.body.acc.mean.z mean of frequency domain signals of body accelaration in Z axis
f.body.acc.std.x standard deviation of frequency domain signals of body accelaration in X axis
f.body.acc.std.y standard deviation of frequency domain signals of body accelaration in Y axis
f.body.acc.std.z standard deviation of frequency domain signals of body accelaration in Z axis
f.body.acc.jerk.mean.x mean of obtaining Jerk signal from frequency domain signal of body accelaration in X axis
f.body.acc.jerk.mean.y mean of obtaining Jerk signal from frequency domain signal of body accelaration in Y axis
f.body.acc.jerk.mean.z mean of obtaining Jerk signal from frequency domain signal of body accelaration in Z axis
f.body.acc.jerk.std.x standard deviation of obtaining Jerk signal from frequency domain signal of body accelaration in X axis
f.body.acc.jerk.std.y standard deviation Jerk signal from frequency domain signal of body accelaration in Y axis
f.body.acc.jerk.std.z standard deviation Jerk signal from frequency domain signal of body accelaration in Z axis
f.body.gyro.mean.x mean of frequency domain signal of body gyro in X axis
f.body.gyro.mean.y mean of frequency domain signal of body gyro in Y axis
f.body.gyro.mean.z mean of frequency domain signal of body gyro in Z axis
f.body.gyro.std.x standard deviation of frequency domain signal of body gyro in X axis
f.body.gyro.std.y standard deviation of frequency domain signal of body gyro in Y axis
f.body.gyro.std.z standard deviation of frequency domain signal of body gyro in Z axis
f.body.acc.mag.mean mean of magnitude from frequency domain signal of body accelaration
f.body.acc.mag.std standard deviation of magnitude from frequency domain signal of body accelaration
f.body.acc.jerk.mag.mean mean of magnitude from obtaining Jerk signal of frequency domain signal of gravity accelaration
f.body.acc.jerk.mag.std standard deviation of magnitude from obtaining Jerk signal of frequency domain signal of gravity accelaration
f.body.gyro.mag.mean mean of magnitude from frequency domain signal of body gyro
f.body.gyro.mag.std standard deviation of magnitude from frequency domain signal of body gyro
f.body.gyro.jerk.mag.mean mean of magnitude from obtaining Jerk signal of frequency domain signal of body gyro
f.body.gyro.jerk.mag.std standard deviation of magnitude from obtaining Jerk signal of frequency domain signal of body gyro

Tidy dataset contains 180 observations(6 activities for each of 30 patients).

Work done to clean up the data:
All raw files are placed in working directory

1. Create dataframe with test observations 
  
  x<-read.table("subject_test.txt", header = FALSE, sep="")
  y<-read.table("y_test.txt", header = FALSE, sep="")
  z<-read.table("X_test.txt", header = FALSE, sep="")
  test<-cbind(x,y,z)
  
2. Create dataframe with train observations
  
  xx<-read.table("subject_train.txt", header = FALSE, sep="")
  yy<-read.table("y_train.txt", header = FALSE, sep="")
  zz<-read.table("X_train.txt", header = FALSE, sep="")
  train<-cbind(xx,yy,zz)

3. Merge test and train datasets
  
  common<-rbind(test,train)
  
4. Change the names of columns with Subject ID and activity type and use 
  descriptive activity names to name the activities in the data set
  
  colnames(common)[1]<-"subjectID"
  colnames(common)[2]<-"activityID"
  activities<-read.table("activity_labels.txt", header = FALSE, sep ="")
  colnames(activities)<- c("activityID","activity")
  result<-merge(activities, common, by = "activityID")
  
5. Appropriately label the data set with descriptive variable names.
  
  features<-read.table("features.txt", header = FALSE, sep ="")
  featureC<-as.vector(features$V2, mode = "any")
  colnames(result)[4:ncol(result)]<-featureC
  
6. Extract only the measurements on the mean and standard deviation for each 
measurement

columnS<-grep("*mean\\(\\)*|*std\\(\\)*", colnames(result))
result<-subset(result, select = c(2:3,columnS))

7. From the data set in step 4, creates a second, independent tidy data set with
the average of each variable for each activity and each subject

  meanData <- result %>%
     group_by(subjectID,activity) %>%
     summarise(across(.cols = everything(),mean))
     
     
The UCI Machine Learning Repository: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The source data for this project can be found here. https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
