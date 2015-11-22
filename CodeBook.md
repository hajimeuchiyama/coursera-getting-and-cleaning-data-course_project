
Code Book for Coursera - Getting and Cleaning Data: Course Project
=======

## Variable Description

The variables are categorized as *key variables* or *non-key variables*.  The submitted tidy data set is a result of `mean` values of the non-key variables for each key variable (e.g., `activity`, `subject`).  Some domain-specific technical terminology used in the non-key variable names are briefly descrived in Glossary section.

### Key Variables

- ` activity ` : Activity label observed by human, factor (6 levels) as follows:
  1. WALKING
  2. WALKING_UPSTAIRS
  3. WALKING_DOWNSTAIRS
  4. SITTING
  5. STANDING
  6. LAYING
- ` subject `: Identification number of subject, int (1 - 30)

### Non-key Variables

The description of the non-key variables is grouped into 10 categories (the number in parentheses denotes the number of variables in that category).  The variables in group 1 through 6 are time-domain signals. The variables in Group 7 and 9 are produced by a Fast Fourie Transform (FFT) algorithm to convert the original time domain signals to the frequency domain.

The values of those non-key variables are normalized to range from -1 to 1, thus have no units.

 1. Body Linear Acceleration Variables (6)
 2. Gravity Linear Acceleration Variables (6)
 3. Body Linear Jerk Variables (6)
 4. Body Angular Velocity Variables (6)
 5. Body Angular Jerk Variables (6)
 6. Magnitude Variables (10)
 7. FFT-applied Body Linear Acceleration Variables (6)
 8. FFT-applied Body Linear Acceleration Jerk Variables (6)
 9. FFT-applied Body Angular Velocity Variables (6)
 10. FFT-applied Magnitude Variables (8)

####1. Body Linear Acceleration Variables 
```
tBodyAcc_Xaxis_mean
tBodyAcc_Yaxis_mean
tBodyAcc_Zaxis_mean
tBodyAcc_Xaxis_std
tBodyAcc_Yaxis_std
tBodyAcc_Zaxis_std
```
 - Time Domain
 - Signal Type: Body linear acceleration
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tBodyAcc_Xaxis_mean`: The mean value of the X axis component of the body linear acceleration signals

#### 2. Gravity Linear Acceleration Variables
```
tGravityAcc_Xaxis_mean
tGravityAcc_Yaxis_mean
tGravityAcc_Zaxis_mean
tGravityAcc_Xaxis_std
tGravityAcc_Yaxis_std
tGravityAcc_Zaxis_std
```
 - Time Domain
 - Signal Type: Gravity linear acceleration
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tGravityAcc_Yaxis_std`: The standard deviation of the Y axis component of the gravity linear acceleration signals

#### 3. Body Linear Jerk Variables
```
tBodyAccJerk_Xaxis_mean
tBodyAccJerk_Yaxis_mean
tBodyAccJerk_Zaxis_mean
tBodyAccJerk_Xaxis_std
tBodyAccJerk_Yaxis_std
tBodyAccJerk_Zaxis_std
```
 - Time Domain
 - Signal Type: Body linear acceleration jerk
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tBodyAccJerk_Zaxis_mean`: The mean value the Z axis component of the body linear acceleration jerk signals

#### 4. Body Angular Velocity Variables
```
tBodyGyro_Xaxis_mean
tBodyGyro_Yaxis_mean
tBodyGyro_Zaxis_mean
tBodyGyro_Xaxis_std
tBodyGyro_Yaxis_std
tBodyGyro_Zaxis_std
```
 - Time Domain
 - Signal Type: Body angular velocity
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tBodyGyro_Yaxis_mean`: The mean value of the Y axis component of the body angular velocity signals

#### 5. Body Angular Jerk Variables
```
tBodyGyroJerk_Xaxis_mean
tBodyGyroJerk_Yaxis_mean
tBodyGyroJerk_Zaxis_mean
tBodyGyroJerk_Xaxis_std
tBodyGyroJerk_Yaxis_std
tBodyGyroJerk_Zaxis_std
```
 - Time Domain
 - Signal Type: Body angular jerk
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tBodyGyroJerk_Xaxis_std`: The standard deviation of the X axis component of the body angular jerk signals

#### 6. Magnitude Variables
```
tBodyAccMag_mean
tBodyAccMag_std
tGravityAccMag_mean
tGravityAccMag_std
tBodyAccJerkMag_mean
tBodyAccJerkMag_std
tBodyGyroMag_mean
tBodyGyroMag_std
tBodyGyroJerkMag_mean
tBodyGyroJerkMag_std
```
 - Time Domain
 - Signal Types:
   - Body linear acceleration magnitude
   - Gravity linear acceleration magnitude
   - Body linear acceleration jerk magnitude
   - Body angular velocity magnitude
   - Body angular velocity jerk magnitude
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`tBodyGyroJerkMag_mean`: The mean value of the body angular velocity jerk magnitude
   
#### 7. FFT-applied Body Linear Acceleration Variables
```
fBodyAcc_Xaxis_mean
fBodyAcc_Yaxis_mean
fBodyAcc_Zaxis_mean
fBodyAcc_Xaxis_std
fBodyAcc_Yaxis_std
fBodyAcc_Zaxis_std
```
 - Frequency Domain
 - Signal Type: FFT Body linear acceleration
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`fBodyAcc_Xaxis_mean`: The mean value of the X axis component of the FFT-applied body linear acceleration
   
#### 8. FFT-applied Body Linear Acceleration Jerk Variables
```
fBodyAccJerk_Xaxis_mean
fBodyAccJerk_Yaxis_mean
fBodyAccJerk_Zaxis_mean
fBodyAccJerk_Xaxis_std
fBodyAccJerk_Yaxis_std
fBodyAccJerk_Zaxis_std
```
 - Frequency Domain
 - Signal Type: FFT-applied Body linear acceleration jerk
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`fBodyAccJerk_Zaxis_mean`: The mean value of the Z axis component of the FFT-applied body linear acceleration jerk
   
#### 9. FFT-applied Body Angular Velocity Variables
```
fBodyGyro_Xaxis_mean
fBodyGyro_Yaxis_mean
fBodyGyro_Zaxis_mean
fBodyGyro_Xaxis_std
fBodyGyro_Yaxis_std
fBodyGyro_Zaxis_std
```
 - Frequency Domain
 - Signal Type: FFT-applied body angular velocity
 - Axis Suffix (`_Xaxis`, `_Yaxis`, `_Zaxis`)
   - `_Xaxis`: X axis component of value
   - `_Yaxis`: Y axis component of value
   - `_Zaxis`: Z axis component of value
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`fBodyGyro_Xaxis_std`: The standard deviation of the X axis component of the FFT-applied body angular velocity
   
#### 10. FFT-applied Magnitude Variables
```
fBodyAccMag_mean
fBodyAccMag_std
fBodyBodyAccJerkMag_mean
fBodyBodyAccJerkMag_std
fBodyBodyGyroMag_mean
fBodyBodyGyroMag_std
fBodyBodyGyroJerkMag_mean
fBodyBodyGyroJerkMag_std
```
 - Frequency Domain
 - Signal Type: FFT-applied magnitude
 - Measurement Type Suffix (`_mean`, `_std`)
   - `_mean`: Mean value
   - `_std`: Standard deviation

Decode sample:
`fBodyBodyAccJerkMag_std`: The standard deviation of the FFT-applied body linear acceleration jerk

## Glossary
There are some domain-specific technical terminology used in variable names.  Here is a list of simple descriptions.

 - **Time Domain**: How the observed signals change over time
 - **Frequency Domain**: How the observed signals are fitted into certain frequencies
 - **Jerk**: A rate of the change of acceleration, which is the derivative of acceleration with respect to time
 - **Fast Fourie Transformed (FFT)**: An algorithm computes the discrete Fourie Transform of a sequence to convert the original signals to the frequency domain, which typically helps to reduce the complexity of the signals



## Reference

 - https://en.wikipedia.org/wiki/Jerk_(physics)
 - http://mathworld.wolfram.com/FastFourierTransform.html
 - https://en.wikipedia.org/wiki/Fourier_transform
 - https://en.wikipedia.org/wiki/Fast_Fourier_transform
