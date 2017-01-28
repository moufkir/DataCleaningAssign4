# The Code Book
<br> This Code book describes the data provided in the file tidy.txt. it containes the following variables:

##  The variables
<br>Activity.name : the name of the activity
<br> the different types of activities
<br>1 WALKING
<br>2 WALKING_UPSTAIRS
<br>3 WALKING_DOWNSTAIRS
<br>4 SITTING
<br>5 STANDING
<br>6 LAYING

<br>Subject : the id of the subject who performs the experiment

<br><b> All the rest of the variable "features"</b>

<br> 
The features were extracted from a raw data that comes from the
<a href="https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones">Human Activity Recognition Using Smartphones Dataset</a>
Only variables dealing with means and standrad deviation are extracted in the file tidy.txt (these variables are listed below)
<br> <b>Description from the original code book file features_info.txt</b>
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 
Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
<b> list of features related to mean and standrad deviation (std)</b>

<br>tBodyAccmeanX
<br>tBodyAccmeanY
<br>tBodyAccmeanZ
<br>tBodyAccstdX
<br>tBodyAccstdY
<br>tBodyAccstdZ
<br>tGravityAccmeanX
<br>tGravityAccmeanY
<br>tGravityAccmeanZ
<br>tGravityAccstdX
<br>tGravityAccstdY
<br>tGravityAccstdZ
<br>tBodyAccJerkmeanX
<br>tBodyAccJerkmeanY
<br>tBodyAccJerkmeanZ
<br>tBodyAccJerkstdX
<br>tBodyAccJerkstdY
<br>tBodyAccJerkstdZ
<br>tBodyGyromeanX
<br>tBodyGyromeanY
<br>tBodyGyromeanZ
<br>tBodyGyrostdX
<br>tBodyGyrostdY
<br>tBodyGyrostdZ
<br>tBodyGyroJerkmeanX
<br>tBodyGyroJerkmeanY
<br>tBodyGyroJerkmeanZ
<br>tBodyGyroJerkstdX
<br>tBodyGyroJerkstdY
<br>tBodyGyroJerkstdZ
<br>tBodyAccMagmean
<br>tBodyAccMagstd
<br>tGravityAccMagmean
<br>tGravityAccMagstd
<br>tBodyAccJerkMagmean
<br>tBodyAccJerkMagstd
<br>tBodyGyroMagmean
<br>tBodyGyroMagstd
<br>tBodyGyroJerkMagmean
<br>tBodyGyroJerkMagstd
<br>fBodyAccmeanX
<br>fBodyAccmeanY
<br>fBodyAccmeanZ
<br>fBodyAccstdX
<br>fBodyAccstdY
<br>fBodyAccstdZ
<br>fBodyAccmeanFreqX
<br>fBodyAccmeanFreqY
<br>fBodyAccmeanFreqZ
<br>fBodyAccJerkmeanX
<br>fBodyAccJerkmeanY
<br>fBodyAccJerkmeanZ
<br>fBodyAccJerkstdX
<br>fBodyAccJerkstdY
<br>fBodyAccJerkstdZ
<br>fBodyAccJerkmeanFreqX
<br>fBodyAccJerkmeanFreqY
<br>fBodyAccJerkmeanFreqZ
<br>fBodyGyromeanX
<br>fBodyGyromeanY
<br>fBodyGyromeanZ
<br>fBodyGyrostdX
<br>fBodyGyrostdY
<br>fBodyGyrostdZ
<br>fBodyGyromeanFreqX
<br>fBodyGyromeanFreqY
<br>fBodyGyromeanFreqZ
<br>fBodyAccMagmean
<br>fBodyAccMagstd
<br>fBodyAccMagmeanFreq
<br>fBodyBodyAccJerkMagmean
<br>fBodyBodyAccJerkMagstd
<br>fBodyBodyAccJerkMagmeanFreq
<br>fBodyBodyGyroMagmean
<br>fBodyBodyGyroMagstd
<br>fBodyBodyGyroMagmeanFreq
<br>fBodyBodyGyroJerkMagmean
<br>fBodyBodyGyroJerkMagstd
<br>fBodyBodyGyroJerkMagmeanFreq
<br>angletBodyAccMeangravity
<br>angletBodyAccJerkMeangravityMean
<br>angletBodyGyroMeangravityMean
<br>angletBodyGyroJerkMeangravityMean
<br>angleXgravityMean
<br>angleYgravityMean
<br>angleZgravityMean
