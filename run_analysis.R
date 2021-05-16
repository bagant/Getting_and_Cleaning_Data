library(dplyr)
library(tidyr)
##Create dataframe with test observations 
x<-read.table("subject_test.txt", header = FALSE, sep="")
y<-read.table("y_test.txt", header = FALSE, sep="")
z<-read.table("X_test.txt", header = FALSE, sep="")
test<-cbind(x,y,z)
##Create dataframe with train observations
xx<-read.table("subject_train.txt", header = FALSE, sep="")
yy<-read.table("y_train.txt", header = FALSE, sep="")
zz<-read.table("X_train.txt", header = FALSE, sep="")
train<-cbind(xx,yy,zz)
##Merge test and train datasets
common<-rbind(test,train)
##Change the names of columns with Subject ID and activity type and use 
##descriptive activity names to name the activities in the data set
colnames(common)[1]<-"subjectID"
colnames(common)[2]<-"activityID"
activities<-read.table("activity_labels.txt", header = FALSE, sep ="")
colnames(activities)<- c("activityID","activity")
result<-merge(activities, common, by = "activityID")
##Appropriately label the data set with descriptive variable names
features<-read.table("features.txt", header = FALSE, sep ="")
featureC<-as.vector(features$V2, mode = "any")
colnames(result)[4:ncol(result)]<-featureC
##Extract only the measurements on the mean and standard deviation for each 
##measurement
columnS<-grep("*mean\\(\\)*|*std\\(\\)*", colnames(result))
result<-subset(result, select = c(2:3,columnS))
##From the data set in step 4, creates a second, independent tidy data set with
##the average of each variable for each activity and each subject
meanData <- result %>%
group_by(subjectID,activity) %>%
summarise(across(.cols = everything(),mean))
##Saves the tidy dataset and independent tidy dataset into txt files 
write.table(result,  row.name=FALSE, file = "tidyDS.txt")
write.table(meanData,  row.name=FALSE, file = "independent_tidy_DS.txt")