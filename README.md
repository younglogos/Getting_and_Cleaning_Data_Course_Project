# Getiing and Cleaning Data Course Project

## Introduction
The experiments have been carried out with a group of 30 volunteers, who were 19 to 48 years old. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

## How the script works
### Getting data set
1. Create two directories called "input" and "output" to store the raw data set and tidy data set
2. Using download.file() to fetch the data set into "input" directory
3. Using unzip() to view the file names and path
4. Read the files needed to analyse after we know which files contained in the "input" directory
5. Combine X_train, y_train and subject_train in a "dataTrain" data frame, and X_test, y_test and subject_test in a "testTrain" data frame
6. Rename the colume names of new data frames created in step 5 according to the "feature" data set

### Converting raw data into tidy data
1. Using rbind to merge "dataTrain" and "dataTest“ into a new data set
2. Extract only the measurements on the mean and stanard deviation for each measurement by regular expression
3. Use descriptive activity names to name the activity in the data set created in step 1
4. Label the data set with descriptive names:
    i)   prefix t is replaced by time
    ii)  Acc is replaced by Accelerometer
    iii) Gyro is replaced by Gyroscope
    iv)  prefix f is replaced by frequency
    v)   Mag is replaced by Magnitude
    vi)  BodyBody is replaced by Body
5. Created a independent tidy data set with the average of each variable for each activity and each subject from the data set in last step

## Variable
### subject
30 <br>
Volunteers taken part in the experiment. <br>
1...30 .Volunteers identifier

### activity 
6 <br>
Activity performed by volunteers in the experiment. <br>
* WALKING_UPSTAIRS <br>
* WALKING_DOWNSTAIRS <br>
* SITTING <br>
* STANDING <br>
* LAYING <br>

### timeBodyAccelerometer -mean()-X
180 <br>
Mean value of time domain signals obody acceleration in X direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
0.2...0.4 .Floating mean value of time domain signals of body acceleration in X direction

### timeBodyAccelerometer-mean()-Y
180 <br>
Mean value of time domain signals of body acceleration in Y direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.05...0.001 .Floating mean value of time domain signals of body acceleration in Y direction

### timeBodyAccelerometer-mean()-Z 
180 <br>
Mean value of time domain signals of body acceleration in Z direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.16...-0.07 .Floating mean value of time signals of body acceleration in Z direction

### timeBodyAccelerometer-std()-X
180 <br>
Standard deviation of time domain signals of body acceleration in X direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.10...0.63 .Floating standard deviation of time domain signals of body acceleration in X direction

### timeBodyAccelerometer-std()-Y
180 <br>
Standard deviation of time domain signals of body acceleration in Y direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.10...0.63 .Floating standard deviation of time domain signals of body acceleration in Y direction

### timeBodyAccelerometer-std()-Z
180 <br>
Standard deviation of time domain signals of body acceleration in Z direction captured by subtracting the gravity from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.10...0.61 .Floating standard deviation of time domain signals of body acceleration in Z direction

### timeGravityAccelerometer-mean()-X
180 <br>
Mean value of time domain signals of gravity acceleration in X direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.69...1.00 .Floating mean value of time domain signals of gravity acceleration in X direction

### timeGravityAccelerometer-mean()-Y
180 <br>
Mean value of time domain signals of gravity acceleration in Y direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.21...0.03 .Floating mean value of time domain signals of gravity acceleration in Y direction

### timeGravityAccelerometer-mean()-Z
180 <br>
Mean value of time domain signals of gravity acceleration in Z direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-0.08...0.18 .Floating mean value of time domain signals of gravity acceleration in Z direction

### timeGravityAccelerometer-std()-X
180 <br>
Standard deviation of time domain signals of gravity acceleration in X direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-1.00...-0.80 .Floating standard deviation of time domain signals of gravity acceleration in X direction

### timeGravityAccelerometer-std()-Y
180 <br>
Standard deviation of time domain signals of gravity acceleration in Y direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-1.00...-0.64 .Floating standard deviation of time domain signals of gravity acceleration in Y direction

### timeGravityAccelerometer-std()-Z
180 <br>
Standard deviation of time domain signals of gravity acceleration in Z direction captured by subtracting the body acceleration from the total acceleration at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. <br>
-1.00...-0.60 .Floating standard deviation of time domain signals of gravity acceleration in Z direction

### timeBodyAccelerometerJerk-mean()-X
180 <br>
Mean value of time domain signal of body linear acceleration were derived in time to obtain Jerk signals in X direction. <br>
0.04...0.14 .Floating mean value of time domain signal of body linear acceleration were derived in time in X direction

### timeBodyAccelerometerJerk-mean()-Y
180 <br>
Mean value of time domain signals of body linear acceleration were derived in time to obtain Jerk signals in Y direction. <br>
-0.03...0.06 .Floating mean value of time domain signal of body linear acceleration were derived in time in Y direction

### timeBodyAccelerometerJerk-mean()-Z
180 <br>
Mean value of time domain signals of body linear acceleration were derived in time to obtain Jerk signals in Z direction. <br>
-0.03...0.06 .Floating mean value of time domain signals of body linear acceleration were derived in time in Z direction

### timeBodyAccelerometerJerk-std()-X
180 <br>
Standard deviation of time domain signals of body linear acceleration were derived in time to obtain Jerk signals in X direction. <br>
-0.10...0.55 .Floating standard deviation of time domain signals of body linear acceleration were derived in time in X direction

### timeBodyAccelerometerJerk-std()-Y
180 <br>
Standard deviation of time domain signals of body linear acceleration were derived in time to obtain Jerk signals in Y direction. <br>
-0.10...0.36 .Floating standard deviation of time domain signals of body linear acceleration were derived in time in Y direction

### timeBodyAccelerometerJerk-std()-Z
180 <br>
Standard deviation of time domain signals of body linear acceleration were derived in time to obtain Jerk signals in Z direction. <br>
-0.10...0.04 .Floating standard deviation of time domain signals of body linear acceleration were derived in time in Z direction

### timeBodyGyroscope-mean()-X
180 <br>
Mean value of time signals of angular velocity vector measured in X direction by the gyroscope for each window sample. The units are radians/second. <br>
-0.21...0.20 .Floating mean value of time signals of angular velocity vector in X direction

### timeBodyGyroscope-mean()-Y
180 <br>
Mean value of time signals of angular velocity vector measured in Y direction by the gyroscope for each window sample. The units are radians/second. <br>
-0.21...0.03 .Floating mean value of time signals of angular velocity vector in Y direction

### timeBodyGyroscope-mean()-Z
180 <br>
Mean value of time signals of angular velocity vector measured in Z direction by the gyroscope for each window sample. The units are radians/second. <br>
-0.08...0.18 .Floating mean value of time signals of angular velocity vector in Z direction

### timeBodyGyroscope-std()-X
180 <br>
Standard deviaiton of time signals of angular velocity vector measured in X direction by the gyroscope for each window sample. The units are radians/second. <br>
0.17...0.28 .Floating standard deviation of time signals of angular velocity vector in X direction

### timeBodyGyroscope-std()-Y
180 <br>
Standard deviaiton of time signals of angular velocity vector measured in Y direction by the gyroscope for each window sample. The units are radians/second. <br>
-1.00...0.48 .Floating standard deviation of time signals of angular velocity vector in Y direction

### timeBodyGyroscope-std()-Z
180 <br>
Standard deviaiton of time signals of angular velocity vector measured in Z direction by the gyroscope for each window sample. The units are radians/second. <br>
-1.00...0.57 .Floating standard deviation of time signals of angular velocity vector in Z direction

### timeBodyGyroscopeJerk-mean()-X
180 <br>
Mean value of time domain signals of angular velicity were derived in time to obtain Jerk signals in X direction. <br>
 -0.16...0.03 .Floating mean value of time signals of angular velocity vector were derived in time in X direction

### timeBodyGyroscopeJerk-mean()-Y
180 <br>
Mean value of time domain signals of angular velicity were derived in time to obtain Jerk signals in Y direction. <br>
 -0.08...0.14 .Floating mean value of time signals of angular velocity vector were derived in time in Y direction

### timeBodyGyroscopeJerk-mean()-Z
180 <br>
Mean value of time domain signals of angular velicity were derived in time to obtain Jerk signals in Z direction. <br>
-0.10...-0.006 .Floating mean value of time signals of angular velocity vector were derived in time in Z direction

### timeBodyGyroscopeJerk-std()-X
180 <br>
Standard deviation of time domain signals of angular velicity were derived in time to obtain Jerk signals in X direction. <br>
-0.10...0.18 .Floating standard deviation of time signals of angular velocity vector were derived in time in X direction

### timeBodyGyroscopeJerk-std()-Y
180 <br>
Standard deviation of time domain signals of angular velicity were derived in time to obtain Jerk signals in Y direction. <br>
-0.10...0.30 .Floating standard deviation of time signals of angular velocity vector were derived in time in Y direction

### timeBodyGyroscopeJerk-std()-Z
180 <br>
Standard deviation of time domain signals of angular velicity were derived in time to obtain Jerk signals in Z direction. <br>
-0.10...0.20 .Floating standard deviation of time signals of angular velocity vector were derived in time in Z direction

### timeBodyAccelerometerMagnitute-mean()
180 <br>
Mean value of magnitude of three-dimensional time domain signals of body acceleration were calculated using the Euclidean norm. <br>
-0.10...0.09 .Floating mean magnitude of time signals domain of body acceleration

### timeBodyAccelerometerMagnitute-std()
180 <br>
Standard deviation of magnitude of three-dimensional time domain signals of acceleration were calculated using the Euclidean norm. <br>
-0.10...0.43 .Floating standaar deviation of magnitude of body acceleration in time domain signals

### timeGravityAccelerometerMagnitute-mean()
180 <br>
Mean value of magnitude of three-dimensional time domain signals of gravity acceleration were calculated using the Euclidean norm. <br>
-0.10...0.65 .Floating standar deviation of magnitude of gravity acceleration in time domain signals

### frequencyBodyAccelerometer-mean()-X
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-mean()-X. <br>
-0.10...0.54 .Floating mean value of frequency doamin signals of body acceleration in X direction

### frequencyBodyAccelerometer-mean()-Y
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-mean()-Y. <br>
-0.10...0.54 .Floating mean value of frequency doamin signals of body acceleration in Y direction

### frequencyBodyAccelerometer-mean()-Z
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-mean()-Z. <br>
-0.10...0.29 .Floating mean value of frequency doamin signals of body acceleration in Z direction

### frequencyBodyAccelerometer-std()-X
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-std()-X. <br>
 -1.00...0.66 .Floating standard deviation of frequency doamin signals of body acceleration in X direction

### frequencyBodyAccelerometer-std()-Y
180 <br>
Standard deviation of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-std()-Y. <br>
 -1.00...0.57 .Floating standard deviation of frequency doamin signals of body acceleration in Y direction

### frequencyBodyAccelerometer-std()-Z
180 <br>
Standard deviation of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-std()-Z. <br>
 -1.00...0.69 .Floating standard deviation of frequency doamin signals of body acceleration in Z direction

### frequencyBodyAccelerometer-std()-Z
180 <br>
Standard deviation of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyAccelerometer-std()-Z. <br>
 -1.00...0.69 .Floating standard deviation of frequency doamin signals of body acceleration in Z direction

### frequencyBodyAccelerometer-meanFreq()-X
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of body acceleration in X directon. <br>
-0.64...0.16 .Floating weighted average of frequency doamin signals of body acceleration in X direction

### frequencyBodyAccelerometer-meanFreq()-Y
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of body acceleration in Y directon. <br>
-0.38...0.47 .Floating weighted average of frequency doamin signals of body acceleration in Y direction

### frequencyBodyAccelerometer-meanFreq()-Z
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of body acceleration in Z directon. <br>
-0.52...0.41 .Floating weighted average of frequency doamin signals of body acceleration in Z direction

### frequencyBodyAccelerometerJerk-mean()-X
180 <br>
Mean value of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in X direction. <br>
-1.00...-0.50 .Floating mean value of frequency doamin signals of body acceleration were derived in time in X direction

### frequencyBodyAccelerometerJerk-mean()-Y
180 <br>
Mean value of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in Y direction. <br>
-1.00...0.28 .Floating mean value of frequency doamin signals of body acceleration were derived in time in Y direction

### frequencyBodyAccelerometerJerk-mean()-Z
180 <br>
Mean value of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in Z direction. <br>
-1.00...0.16 .Floating mean value of frequency doamin signals of body acceleration were derived in time in Z direction

### frequencyBodyAccelerometerJerk-std()-X
180 <br>
Standard deviation of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in X direction. <br>
-1.00...0.48 .Floating standard deviation of frequency doamin signals of body acceleration were derived in time in X direction

### frequencyBodyAccelerometerJerk-std()-Y
180 <br>
Standard deviation of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in Y direction. <br>
-1.00...0.35 .Floating standard deviation of frequency doamin signals of body acceleration were derived in time in Y direction

### frequencyBodyAccelerometerJerk-std()-Z
180 <br>
Standard deviation of frequency domain signals of body acceleration were derived in time to obtain Jerk signals in Z direction. <br>
-1.00...-0.006 .Floating standard deviation of frequency doamin signals of body acceleration were derived in time in Z direction

### frequencyBodyAccelerometerJerk-meanFreq()-X
180 <br>
Weighted average of the frequency components to the time derivative of body acceleration in X directon. <br>
-0.50...0.38 .Floating weighted average of frequency doamin signals of body acceleration were derived X direction

### frequencyBodyAccelerometerJerk-meanFreq()-Y
180 <br>
Weighted average of the frequency components to the time derivative of body acceleration in Y directon. <br>
-0.61...0.20 .Floating weighted average of frequency doamin signals of body acceleration were derived Y direction

### frequencyBodyAccelerometerJerk-meanFreq()-Z
180 <br>
Weighted average of the frequency components to the time derivative of body acceleration in Z directon. <br>
-0.63...0.24 .Floating weighted average of frequency doamin signals of body acceleration were derived Z direction

### frequencyBodyGyroscope-mean()-X
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyGyroscope-mean()-X. <br>
-1.00...0.48 .Floating mean value of frequency doamin signals of anular velocity in X direction

### frequencyBodyGyroscope-mean()-Y
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyGyroscope-mean()-Y. <br>
-1.00...0.33 .Floating mean value of frequency doamin signals of angular velocity in Y direction

### frequencyBodyGyroscope-mean()-Z
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyGyroscope-mean()-Z. <br>
-1.00...0.50 .Floating mean value of frequency doamin signals of angular velocity in Z direction

### frequencyBodyGyroscope-mean()-Z
180 <br>
Mean value of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyGyroscope-mean()-Z. <br>
-1.00...0.50 .Floating mean value of frequency doamin signals of angular velocity in Z direction

### frequencyBodyGyroscope-std()-X
180 <br>
Standard deviation of frequency domain signals produced by Fast Fourier Transform (FFT) applied to timeBodyGyroscope-mean()-Z. <br>
-1.00...0.50 .Floating standard deviation of frequency doamin signals of angular velocity in Z direction

### frequencyBodyGyroscope-meanFreq()-X
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of angular velocity in X directon. <br>
-0.40...0.25 .Floating weighted average of frequency doamin signals of body acceleration in X direction

### frequencyBodyGyroscope-meanFreq()-Y
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of angular velocity in Y directon. <br>
-0.67...0.28 .Floating weighted average of frequency doamin signals of body acceleration in Y direction

### frequencyBodyGyroscope-meanFreq()-Z
180 <br>
Weighted average of the frequency components to obtain a mean frequency(produced by Fast Fourier Transform (FFT)) of angular velocity in Z directon. <br>
-0.50...0.38 .Floating weighted average of frequency doamin signals of body acceleration in Z direction

### frequencyBodyAccelerometerMagnitute-mean()
180 <br>
Mean value of magnitude of three-dimensional frequnce domain signals of body acceleration were calculated using the Euclidean norm.
-1.00...0.59 .Floating mean value of magnitude of frequency domain signals of body acceleration

### frequencyBodyAccelerometerMagnitute-std()
180 <br>
Standard deviation of magnitude of three-dimensional frequnce domain signals of body acceleration were calculated using the Euclidean norm.
-1.00...0.18 .Floating standard deviation of magnitude of frequency domain signals of body acceleration

### frequencyBodyAccelerometerMagnitute-meanFreq()
180 <br>
Weighted average of the magnitude of three-dimensional frequnce domain signals of body acceleration were calculated using the Euclidean norm. <br>
-0.32...0.44 .Floating weighted average of the magnitude of three-dimensional frequency doamin signals of body acceleration

### frequencyBodyAccelerometerJerkMagnitute-mean()
180 <br>
Mean value of the magnitude of three-dimensional frequnce domain signals of body acceleration were derived in time. <br>
-1.00...0.54 .Floating mean time derivative of the magnitude of three-dimensional frequency doamin signals of body acceleration

### frequencyBodyAccelerometerJerkMagnitute-std()
180 <br>
Standard deviation of the magnitude of three-dimensional frequnce domain signals of body acceleration were derived in time. <br>
-1.00...0.32 .Floating standard devitaion of time derivative of the magnitude of three-dimensional frequency doamin signals of body acceleration

### frequencyBodyAccelerometerJerkMagnitute-meanFreq()
180 <br>
Weighted average of the magnitude of three-dimensional frequnce domain signals of body acceleration were derived in time. <br>
-0.13...0.49 .Floating weighted average of time derivative of the magnitude of three-dimensional frequency doamin signals of body acceleration

### frequencyBodyGyroscopeMagnitute-mean() 180
<br>
Mean value of the magnitude of three-dimensional frequnce domain signals of angular velocity. <br>
-0.99...0.21 .Floating mean value of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeMagnitute-std() 180
<br>
Standard deviation of the magnitude of three-dimensional frequnce domain signals of angular velocity. <br>
-0.99...0.24 .Floating standard deviation of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeMagnitute-meanFreq()
180 <br>
Weighted average of the magnitude of three-dimensional frequnce domain signals of angular velocity. <br>
-0.46...0.41 .Floating weighted average of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeJerkMagnitute-mean()
180 <br>
Mean value of the magnitude of three-dimensional frequnce domain signals of angular velocity were derived in time. <br>
-1.00...0.15 .Floating mean time derivative of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeJerkMagnitute-std()
180 <br>
Standard deviation of the magnitude of three-dimensional frequnce domain signals of angular velocity were derived in time. <br>
-1.00...0.15 .Floating standard deviation of time derivative of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeJerkMagnitute-std()
180 <br>
Standard deviation of the magnitude of three-dimensional frequnce domain signals of angular velocity were derived in time. <br>
-1.00...0.15 .Floating standard deviation of time derivative of the magnitude of three-dimensional frequency doamin signals of angular velocity

### frequencyBodyGyroscopeJerkMagnitute-meanFreq()
180 <br>
Weignted average of the magnitude of three-dimensional frequnce domain signals of angular velocity were derived in time. <br>
-1.00...0.19 .Floating weighted average of time derivative of the magnitude of three-dimensional frequency
