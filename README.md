# **DESCRIPTION**
The features selected for this database are derived from the accelerometer and gyroscope 3-axial raw signals of a motion sensing experiment described in full detail [here](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#).

###### **Study design:** (SOURCE DATA **NOT** IN THIS DATA SET)

> The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

> Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

> Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

##### **SUMMARY CHOICES:** From the data described above, this data set extracts and retains only the standard deviation and mean results of the the source data and the stepped (Fast Fourier transformed) data and summarizes those with a final applied mean.

+ X, Y, and Z denote 3-axial signals in the X, Y and Z directions.
+ “subject” denotes each participating individual by number.
+ “activity” denotes the activity the individual executed when measured:

**Activities**
1. WALKING
1. WALKING_UPSTAIRS
1. WALKING_DOWNSTAIRS
1. SITTING
1. STANDING
1. LAYING

**Code book**
- subject	- subject to which each observation applies
- activity - activity of the subject at the moment of measurement
- tBodyAccMeanX - mean acceleration of subject body on the X-axis
- tBodyAccMeanY - mean acceleration of subject body on the Y-axis
- tBodyAccMeanZ - mean acceleration of subject body on the Z-axis
- tBodyAccStandardDeviationX - SD of acceleration of subject body on the X-axis
- tBodyAccStandardDeviationY - SD of acceleration of subject body on the Y-axis
- tBodyAccStandardDeviationZ - SD of acceleration of subject body on the Z-axis
- tGravityAccMeanX - mean acceleration attributed to gravity on the X-axis
- tGravityAccMeanY - mean acceleration attributed to gravity on the Y-axis
- tGravityAccMeanZ - mean acceleration attributed to gravity on the Z-axis
- tGravityAccStandardDeviationX - SD of acceleration of subject body on the X-axis
- tGravityAccStandardDeviationY - SD of acceleration of subject body on the Y-axis
- tGravityAccStandardDeviationZ - SD of acceleration of subject body on the Z-axis
- tBodyAccJerkMeanX - mean jerk of subject body on the X-axis
- tBodyAccJerkMeanY - mean jerk of subject body on the Y-axis
- tBodyAccJerkMeanZ - mean jerk of subject body on the Z-axis
- tBodyAccJerkStandardDeviationX - SD of jerk of subject body on the X-axis
- tBodyAccJerkStandardDeviationY - SD of jerk of subject body on the Y-axis
- tBodyAccJerkStandardDeviationZ - SD of jerk of subject body on the Z-axis
- tBodyGyroMeanX - mean rotation of subject body on the X-axis
- tBodyGyroMeanY - mean rotation of subject body on the Y-axis
- tBodyGyroMeanZ - mean rotation of subject body on the Z-axis
- tBodyGyroStandardDeviationX - SD of rotation of subject body on the X-axis
- tBodyGyroStandardDeviationY - SD of rotation of subject body on the Y-axis
- tBodyGyroStandardDeviationZ - SD of rotation of subject body on the Z-axis
- tBodyGyroJerkMeanX - mean jerk of subject body on the X rotation
- tBodyGyroJerkMeanY - mean jerk of subject body on the Y rotation
- tBodyGyroJerkMeanZ - mean jerk of subject body on the Z rotation
- tBodyGyroJerkStandardDeviationX - SD of jerk of subject body on the X rotation
- tBodyGyroJerkStandardDeviationY - SD of jerk of subject body on the Y rotation
- tBodyGyroJerkStandardDeviationZ - SD of jerk of subject body on the Z rotation
- tBodyAccMagMean - mean magnitude of subject body acceleration
- tBodyAccMagStandardDeviation - magnitude SD of subject body acceleration
- tGravityAccMagMean - mean of subject gravity acceleration
- tGravityAccMagStandardDeviation - SD of subject gravity acceleration
- tBodyAccJerkMagMean - mean of subject body acceleration jerk magnitude
- tBodyAccJerkMagStandardDeviation - SD of subject body acceleration jerk magnitude
- tBodyGyroMagMean - mean of subject body rotation magnitude
- tBodyGyroMagStandardDeviation - SD of subject body rotation magnitude
- tBodyGyroJerkMagMean - mean of subject body rotation jerk magnitude
- tBodyGyroJerkMagStandardDeviation - SD of subject body rotation jerk magnitude
- fBodyAccMeanX - Fourier transform of tBodyAccMeanX
- fBodyAccMeanY - Fourier transform of tBodyAccMeanY
- fBodyAccMeanZ - Fourier transform of tBodyAccMeanZ
- fBodyAccStandardDeviationX - Fourier transform of tBodyAccStandardDeviationX
- fBodyAccStandardDeviationY - Fourier transform of tBodyAccStandardDeviationY
- fBodyAccStandardDeviationZ - Fourier transform of tBodyAccStandardDeviationZ
- fBodyAccMeanFreqX - Fourier frequency of tBodyAccMeanX
- fBodyAccMeanFreqY - Fourier frequency of tBodyAccMeanY
- fBodyAccMeanFreqZ - Fourier frequency of tBodyAccMeanZ
- fBodyAccJerkMeanX - Fourier mean of tBodyAccJerkX
- fBodyAccJerkMeanY - Fourier mean of tBodyAccJerkY
- fBodyAccJerkMeanZ - Fourier mean of tBodyAccJerkZ
- fBodyAccJerkStandardDeviationX - Fourier SD of tBodyAccJerkX
- fBodyAccJerkStandardDeviationY - Fourier SD of tBodyAccJerkY
- fBodyAccJerkStandardDeviationZ - Fourier SD of tBodyAccJerkXZ
- fBodyAccJerkMeanFreqX - Fourier mean of tBodyAccJerkX
- fBodyAccJerkMeanFreqY - Fourier mean of tBodyAccJerkY
- fBodyAccJerkMeanFreqZ - Fourier mean of tBodyAccJerkZ
- fBodyGyroMeanX - Fourier mean of tBodyGyroX
- fBodyGyroMeanY - Fourier mean of tBodyGyroY
- fBodyGyroMeanZ - Fourier mean of tBodyGyroZ
- fBodyGyroStandardDeviationX - Fourier SD of tBodyGyroX
- fBodyGyroStandardDeviationY - Fourier SD of tBodyGyroY
- fBodyGyroStandardDeviationZ - Fourier SD of tBodyGyroZ
- fBodyGyroMeanFreqX - Fourier mean frequency of tBodyGyroX
- fBodyGyroMeanFreqY - Fourier mean frequency of tBodyGyroY
- fBodyGyroMeanFreqZ - Fourier mean frequency of tBodyGyroZ
- fBodyAccMagMean - Fourier mean of tBodyAccMag
- fBodyAccMagStandardDeviation - Fourier SD of tBodyAccMag
- fBodyAccMagMeanFreq - Fourier mean frequency of tBodyAccMag
- fBodyBodyAccJerkMagMean - Fourier mean of tBodyAccJerkMag
- fBodyBodyAccJerkMagStandardDeviation - Fourier SD of tBodyAccJerkMag
- fBodyBodyAccJerkMagMeanFreq - Fourier mean frequency of tBodyAccJerkMag
- fBodyBodyGyroMagMean - Fourier mean of tBodyGyroMag
- fBodyBodyGyroMagStandardDeviation - Fourier SD of tBodyGyroMag
- fBodyBodyGyroMagMeanFreq - Fourier mean frequency of tBodyGyroMag
- fBodyBodyGyroJerkMagMean - Fourier mean of tBodyGyroJerkMag
- fBodyBodyGyroJerkMagStandardDeviation - Fourier SD of tBodyGyroJerkMag
- fBodyBodyGyroJerkMagMeanFreq - Fourier mean frequency of tBodyGyroJerkMag