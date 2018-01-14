# About data set.
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six 
activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 


The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.


# About R coding

## Libraries

 library(dplyr)
 
 library(tidyr)
 
 library(reshape2)

## Important variables

- 'Volunteers': 30 vlonteers participated this experiments for collection data.

- 'features': List of all features, including mean, std and other statistics of experiment data on each axial.

- 'activities': 1.WALKING, 2.WALKING_UPSTAIRS, 3.WALKING_DOWNSTAIRS, 4.SITTING, 5.STANDING, 6.LAYING

- 'train_data': Training set.

- 'train_actLable': Training activity labels.

- 'test_data': Test set.

- 'test_actLable': Test activity labels.

- 'dataset': Merge test_data and train_data

- 'dataset_actLable': Merge test_actLable and train_actLable.

- 'real_data' : First table according to step 1-4 in README.md

- 'second_dataset' : table for Step 5, volunteer and activity included

- 'tidy_data' : table for Step 5 volunteer and activity excluded.


## Variables in table:
* Means of  fBodyAcc-mean-X
* Means of  fBodyAcc-mean-Y
* Means of  fBodyAcc-mean-Z
* Means of  fBodyAcc-meanFreq-X
* Means of  fBodyAcc-meanFreq-Y
* Means of  fBodyAcc-meanFreq-Z
* Means of  fBodyAcc-std-X
* Means of  fBodyAcc-std-Y
* Means of  fBodyAcc-std-Z
* Means of  fBodyAccJerk-mean-X
* Means of  fBodyAccJerk-mean-Y
* Means of  fBodyAccJerk-mean-Z
* Means of  fBodyAccJerk-meanFreq-X
* Means of  fBodyAccJerk-meanFreq-Y
* Means of  fBodyAccJerk-meanFreq-Z
* Means of  fBodyAccJerk-std-X
* Means of  fBodyAccJerk-std-Y
* Means of  fBodyAccJerk-std-Z
* Means of  fBodyAccMag-mean
* Means of  fBodyAccMag-meanFreq
* Means of  fBodyAccMag-std
* Means of  fBodyBodyAccJerkMag-mean
* Means of  fBodyBodyAccJerkMag-meanFreq
* Means of  fBodyBodyAccJerkMag-std
* Means of  fBodyBodyGyroJerkMag-mean
* Means of  fBodyBodyGyroJerkMag-meanFreq
* Means of  fBodyBodyGyroJerkMag-std
* Means of  fBodyBodyGyroMag-mean
* Means of  fBodyBodyGyroMag-meanFreq
* Means of  fBodyBodyGyroMag-std
* Means of  fBodyGyro-mean-X
* Means of  fBodyGyro-mean-Y
* Means of  fBodyGyro-mean-Z
* Means of  fBodyGyro-meanFreq-X
* Means of  fBodyGyro-meanFreq-Y
* Means of  fBodyGyro-meanFreq-Z
* Means of  fBodyGyro-std-X
* Means of  fBodyGyro-std-Y
* Means of  fBodyGyro-std-Z
* Means of  tBodyAcc-mean-X
* Means of  tBodyAcc-mean-Y
* Means of  tBodyAcc-mean-Z
* Means of  tBodyAcc-std-X
* Means of  tBodyAcc-std-Y
* Means of  tBodyAcc-std-Z
* Means of  tBodyAccJerk-mean-X
* Means of  tBodyAccJerk-mean-Y
* Means of  tBodyAccJerk-mean-Z
* Means of  tBodyAccJerk-std-X
* Means of  tBodyAccJerk-std-Y
* Means of  tBodyAccJerk-std-Z
* Means of  tBodyAccJerkMag-mean
* Means of  tBodyAccJerkMag-std
* Means of  tBodyAccMag-mean
* Means of  tBodyAccMag-std
* Means of  tBodyGyro-mean-X
* Means of  tBodyGyro-mean-Y
* Means of  tBodyGyro-mean-Z
* Means of  tBodyGyro-std-X
* Means of  tBodyGyro-std-Y
* Means of  tBodyGyro-std-Z
* Means of  tBodyGyroJerk-mean-X
* Means of  tBodyGyroJerk-mean-Y
* Means of  tBodyGyroJerk-mean-Z
* Means of  tBodyGyroJerk-std-X
* Means of  tBodyGyroJerk-std-Y
* Means of  tBodyGyroJerk-std-Z
* Means of  tBodyGyroJerkMag-mean
* Means of  tBodyGyroJerkMag-std
* Means of  tBodyGyroMag-mean
* Means of  tBodyGyroMag-std
* Means of  tGravityAcc-mean-X
* Means of  tGravityAcc-mean-Y
* Means of  tGravityAcc-mean-Z
* Means of  tGravityAcc-std-X
* Means of  tGravityAcc-std-Y
* Means of  tGravityAcc-std-Z
* Means of  tGravityAccMag-mean
* Means of  tGravityAccMag-std

