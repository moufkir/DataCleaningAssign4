# DataCleaningAssign4
The Assignement on Data Cleaning Course for week 4
# The Script run_analysis.R
The script is devided into the following parts
1) reading the data
2)preparing the data frames from several files 
3) extracting the list of variables having names containing mean and standrad deviations
4)merging the data all together for the variables names we kept the names from the features
5) creating a table activities as the final table containg all the observations and variables (related to mean and Standrad deviataions)
6) genration of the table of the means grouped by activity and subject
7) genation of the 2 files activities.txt and averageActivities.txt

# The Code Book
Activity.name : the name of the activity
Subject : the id of the subject who performs the experiment
"tBodyAcc.mean...X" 
"tBodyAcc.mean...Y" 
"tBodyAcc.mean...Z"
"tBodyAcc.std...X" 
"tBodyAcc.std...Y" 
"tBodyAcc.std...Z" 
"tGravityAcc.mean...X" 
"tGravityAcc.mean...Y" 
"tGravityAcc.mean...Z" 
"tGravityAcc.std...X"
"tGravityAcc.std...Y" 
"tGravityAcc.std...Z" 
"tBodyAccJerk.mean...X" 
"tBodyAccJerk.mean...Y" 
"tBodyAccJerk.mean...Z" 
"tBodyAccJerk.std...X" 
"tBodyAccJerk.std...Y" 
"tBodyAccJerk.std...Z" 
"tBodyGyro.mean...X" "tBodyGyro.mean...Y" 
"tBodyGyro.mean...Z" 
"tBodyGyro.std...X" 
"tBodyGyro.std...Y" 
"tBodyGyro.std...Z"
"tBodyGyroJerk.mean...X" 
"tBodyGyroJerk.mean...Y" 
"tBodyGyroJerk.mean...Z" 
"tBodyGyroJerk.std...X
" "tBodyGyroJerk.std...Y" "tBodyGyroJerk.std...Z" 
"tBodyAccMag.mean.."
"tBodyAccMag.std.." 
"tGravityAccMag.mean.."
"tGravityAccMag.std.." 
"tBodyAccJerkMag.mean.." 
"tBodyAccJerkMag.std.." 
"tBodyGyroMag.mean.."
"tBodyGyroMag.std.."
"tBodyGyroJerkMag.mean.." 
"tBodyGyroJerkMag.std.." 
"fBodyAcc.mean...X"
"fBodyAcc.mean...Y" 
"fBodyAcc.mean...Z" 
"fBodyAcc.std...X" 
"fBodyAcc.std...Y" 
"fBodyAcc.std...Z"
"fBodyAcc.meanFreq...X" 
"fBodyAcc.meanFreq...Y" 
"fBodyAcc.meanFreq...Z" 
"fBodyAccJerk.mean...X"
"fBodyAccJerk.mean...Y" 
"fBodyAccJerk.mean...Z" 
"fBodyAccJerk.std...X" 
"fBodyAccJerk.std...Y" 
"fBodyAccJerk.std...Z" 
"fBodyAccJerk.meanFreq...X" 
"fBodyAccJerk.meanFreq...Y" 
"fBodyAccJerk.meanFreq...Z" 
"fBodyGyro.mean...X" 
"fBodyGyro.mean...Y" 
"fBodyGyro.mean...Z" 
"fBodyGyro.std...X" 
"fBodyGyro.std...Y" 
"fBodyGyro.std...Z" 
"fBodyGyro.meanFreq...X" 
"fBodyGyro.meanFreq...Y" 
"fBodyGyro.meanFreq...Z" 
"fBodyAccMag.mean.." 
"fBodyAccMag.std.." 
"fBodyAccMag.meanFreq.." 
"fBodyBodyAccJerkMag.mean.."
"fBodyBodyAccJerkMag.std.." 
"fBodyBodyAccJerkMag.meanFreq.." 
"fBodyBodyGyroMag.mean.." 
"fBodyBodyGyroMag.std.." 
"fBodyBodyGyroMag.meanFreq.." 
"fBodyBodyGyroJerkMag.mean.." 
"fBodyBodyGyroJerkMag.std.." 
"fBodyBodyGyroJerkMag.meanFreq.." 
"angle.tBodyAccMean.gravity." 
"angle.tBodyAccJerkMean..gravityMean." 
"angle.tBodyGyroMean.gravityMean." 
"angle.tBodyGyroJerkMean.gravityMean." 
"angle.X.gravityMean." 
"angle.Y.gravityMean."
