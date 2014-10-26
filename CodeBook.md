# Code Book

## Summary

This is the code book for the tidy_data.txt file produced for the
Coursera "Getting and Cleaning Data" course project.

Original source data was retrieved from
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

> Human Activity Recognition Using Smartphones Dataset
>
> Version 1.0

From the source data readme.txt
> The experiments have been carried out with a group of 30 volunteers within an
> age bracket of 19-48 years. Each person performed six activities (WALKING,
> WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a
> smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer
> and gyroscope, we captured 3-axial linear acceleration and 3-axial angular
> velocity at a constant rate of 50Hz. The experiments have been video-recorded
> to label the data manually. The obtained dataset has been randomly partitioned
> into two sets, where 70% of the volunteers was selected for generating the
> training data and 30% the test data. 

This data set includes only data on the mean and standard deviation features

## Variables

### subject

  * Description: The subject identifier
  * Data Type/Units: integer
  * Values:
    * 1..30: Uniquely identifies 1 of 30 volunteers aged between 19-48 years.

### activity

  * Description: 1 of 6 activities during which the variables was measured
  * Data Type/Units: string
  * Values:
    * LAYING
    * SITTING
    * STANDING
    * WALKING
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS

### features

  * Description: The featuress measured. The following describes how to interpret each feature name
    * Prefix:
      * t: time domain signal
      * f: fast fourier transformed
    * Raw signal source instrument:
      * acc: Accelerometer
      * gyro: Gyroscope
    * Other attributes:
      * jerk: measures derived in time
      * mag: Euclidean norm magnitude of Jerk signals
      * x, y, z: axis of the feature
      * mean: Mean of the feature
      * std: Standard deviation of the feature
  * Data Type/Units: numeric
  * values:
    * tbodyaccmeanx
    * tbodyaccmeany
    * tbodyaccmeanz
    * tbodyaccstdx
    * tbodyaccstdy
    * tbodyaccstdz
    * tgravityaccmeanx
    * tgravityaccmeany
    * tgravityaccmeanz
    * tgravityaccstdx
    * tgravityaccstdy
    * tgravityaccstdz
    * tbodyaccjerkmeanx
    * tbodyaccjerkmeany
    * tbodyaccjerkmeanz
    * tbodyaccjerkstdx
    * tbodyaccjerkstdy
    * tbodyaccjerkstdz
    * tbodygyromeanx
    * tbodygyromeany
    * tbodygyromeanz
    * tbodygyrostdx
    * tbodygyrostdy
    * tbodygyrostdz
    * tbodygyrojerkmeanx
    * tbodygyrojerkmeany
    * tbodygyrojerkmeanz
    * tbodygyrojerkstdx
    * tbodygyrojerkstdy
    * tbodygyrojerkstdz
    * tbodyaccmagmean
    * tbodyaccmagstd
    * tgravityaccmagmean
    * tgravityaccmagstd
    * tbodyaccjerkmagmean
    * tbodyaccjerkmagstd
    * tbodygyromagmean
    * tbodygyromagstd
    * tbodygyrojerkmagmean
    * tbodygyrojerkmagstd
    * fbodyaccmeanx
    * fbodyaccmeany
    * fbodyaccmeanz
    * fbodyaccstdx
    * fbodyaccstdy
    * fbodyaccstdz
    * fbodyaccjerkmeanx
    * fbodyaccjerkmeany
    * fbodyaccjerkmeanz
    * fbodyaccjerkstdx
    * fbodyaccjerkstdy
    * fbodyaccjerkstdz
    * fbodygyromeanx
    * fbodygyromeany
    * fbodygyromeanz
    * fbodygyrostdx
    * fbodygyrostdy
    * fbodygyrostdz
    * fbodyaccmagmean
    * fbodyaccmagstd
    * fbodybodyaccjerkmagmean
    * fbodybodyaccjerkmagstd
    * fbodybodygyromagmean
    * fbodybodygyromagstd
    * fbodybodygyrojerkmagmean
    * fbodybodygyrojerkmagstd