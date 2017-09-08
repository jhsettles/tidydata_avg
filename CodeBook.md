Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean
# Data Merge
First the data set is merged, extracted the data for mean and std.Given appropriate names
# The varaibles after extracting data only for mean asd std are:
"timeBodyAccelerometer-mean()-X"                     "timeBodyAccelerometer-mean()-Y"                    
"timeBodyAccelerometer-mean()-Z"                     "timeBodyAccelerometer-std()-X"                     
"timeBodyAccelerometer-std()-Y"                      "timeBodyAccelerometer-std()-Z"                     
"timeGravityAccelerometer-mean()-X"                  "timeGravityAccelerometer-mean()-Y"                 
"timeGravityAccelerometer-mean()-Z"                  "timeGravityAccelerometer-std()-X"                  
"timeGravityAccelerometer-std()-Y"                   "timeGravityAccelerometer-std()-Z"                  
"timeBodyAccelerometerJerk-mean()-X"                 "timeBodyAccelerometerJerk-mean()-Y"                
"timeBodyAccelerometerJerk-mean()-Z"                 "timeBodyAccelerometerJerk-std()-X"                 
"timeBodyAccelerometerJerk-std()-Y"                  "timeBodyAccelerometerJerk-std()-Z"                 
"timeBodyGyroscope-mean()-X"                         "timeBodyGyroscope-mean()-Y"                        
"timeBodyGyroscope-mean()-Z"                         "timeBodyGyroscope-std()-X"                         
"timeBodyGyroscope-std()-Y"                          "timeBodyGyroscope-std()-Z"                         
"timeBodyGyroscopeJerk-mean()-X"                     "timeBodyGyroscopeJerk-mean()-Y"                    
"timeBodyGyroscopeJerk-mean()-Z"                     "timeBodyGyroscopeJerk-std()-X"                     
"timeBodyGyroscopeJerk-std()-Y"                      "timeBodyGyroscopeJerk-std()-Z"                     
"timeBodyAccelerometerMagnitude-mean()"              "timeBodyAccelerometerMagnitude-std()"              
"timeGravityAccelerometerMagnitude-mean()"           "timeGravityAccelerometerMagnitude-std()"           
"timeBodyAccelerometerJerkMagnitude-mean()"          "timeBodyAccelerometerJerkMagnitude-std()"          
"timeBodyGyroscopeMagnitude-mean()"                  "timeBodyGyroscopeMagnitude-std()"                  
"timeBodyGyroscopeJerkMagnitude-mean()"              "timeBodyGyroscopeJerkMagnitude-std()"              
"frequencyBodyAccelerometer-mean()-X"                "frequencyBodyAccelerometer-mean()-Y"               
"frequencyBodyAccelerometer-mean()-Z"                "frequencyBodyAccelerometer-std()-X"                
"frequencyBodyAccelerometer-std()-Y"                 "frequencyBodyAccelerometer-std()-Z"                
"frequencyBodyAccelerometer-meanFreq()-X"            "frequencyBodyAccelerometer-meanFreq()-Y"           
"frequencyBodyAccelerometer-meanFreq()-Z"            "frequencyBodyAccelerometerJerk-mean()-X"           
"frequencyBodyAccelerometerJerk-mean()-Y"            "frequencyBodyAccelerometerJerk-mean()-Z"           
"frequencyBodyAccelerometerJerk-std()-X"             "frequencyBodyAccelerometerJerk-std()-Y"            
"frequencyBodyAccelerometerJerk-std()-Z"             "frequencyBodyAccelerometerJerk-meanFreq()-X"       
"frequencyBodyAccelerometerJerk-meanFreq()-Y"        "frequencyBodyAccelerometerJerk-meanFreq()-Z"       
"frequencyBodyGyroscope-mean()-X"                    "frequencyBodyGyroscope-mean()-Y"                   
"frequencyBodyGyroscope-mean()-Z"                    "frequencyBodyGyroscope-std()-X"                    
"frequencyBodyGyroscope-std()-Y"                     "frequencyBodyGyroscope-std()-Z"                    
"frequencyBodyGyroscope-meanFreq()-X"                "frequencyBodyGyroscope-meanFreq()-Y"               
"frequencyBodyGyroscope-meanFreq()-Z"                "frequencyBodyAccelerometerMagnitude-mean()"        
"frequencyBodyAccelerometerMagnitude-std()"          "frequencyBodyAccelerometerMagnitude-meanFreq()"    
"frequencyBodyAccelerometerJerkMagnitude-mean()"     "frequencyBodyAccelerometerJerkMagnitude-std()"     
"frequencyBodyAccelerometerJerkMagnitude-meanFreq()" "frequencyBodyGyroscopeMagnitude-mean()"            
"frequencyBodyGyroscopeMagnitude-std()"              "frequencyBodyGyroscopeMagnitude-meanFreq()"        
"frequencyBodyGyroscopeJerkMagnitude-mean()"         "frequencyBodyGyroscopeJerkMagnitude-std()"         
"frequencyBodyGyroscopeJerkMagnitude-meanFreq()"     "activity"                                          
"subject"   

#created a second, independent tidy data set with the average of each variable for each activity and each subject.
1. Made subject and activity factor.
2. Using reshape2 library data set is first melted.
3. Using dcast functions average of each variable for each activity and each subject is calculated.
4. Finally the data set is written to `tidydata_avg.txt`
