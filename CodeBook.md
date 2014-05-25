## CodeBook for ActivityRecognitionProject

###Data Source

For more information on the data, how it was collected and how it was calculated, read the following files from the downloaded source data referenced in the README.MD file of this repository:
* README.txt
* features_info.txt

Also see the UCI Machine Learning Repository website for more details (link below active on 5/25/2014):

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

###Variables and Variable Naming

####Variable Naming

Certain abbreviations exist in the variable names in the data set that are inherited from the original data. I have chosen
to maintain those abbreviations for ease of use, cross-referencing and the intention that this data should be easily useable for later data exploration. The following
abbreviations will be maintained:
* t & f as the leading character differentiate between time series and frequency domain signals, respectively
* Acc stands for acceleration
* Gyro stands for gyroscope
* Mag stands for magnitude
* the accidental double "BodyBody" in some variable names were replaced with a single "Body" as the original project code book describes
	
The variable names have been manipulated into Camel and dot notation to enhance readability and conform with most standard style guides.
The following rules were applied:
* signal type, measurement (whether mean or standard deviation) and x,y,z direction (if applicable) were separated by dot notation
* signal types use Camel notation to highlight separate words
* standard deviation was abbreviated as std
* x axis, y axis and z axis were abbreviated as x, y and z respectively
* data should read: signalType.measurementType.directionalAxis

####Variables	
	
1. subject.id.number : int - the unique identifier for each of the 30 participants.
2. activity : Factor - description of the given activity of daily living performed for a given set of measurements.
	* laying
	* sitting
	* standing
	* walkingupstairs
	* walkingdownstairs
	* walking

tBodyAcc: num - mean and standard deviation calculations of time series body acceleration signals measured in the x, y and z planes.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 3. tBodyAcc.mean.x
* 4. tBodyAcc.mean.y
* 5. tBodyAcc.mean.z
* 6. tBodyAcc.std.x
* 7. tBodyAcc.std.y
* 8. tBodyAcc.std.z

tGravityAcc: num - mean and standard deviation calculations of time series gravity acceleration signals measured in the x, y and z planes. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 9. tGravityAcc.mean.x
* 10. tGravityAcc.mean.y
* 11. tGravityAcc.mean.z
* 12. tGravityAcc.std.x
* 13. tGravityAcc.std.y
* 14. tGravityAcc.std.z

tBodyAccJerk: num - mean and standard deviation calculations of the time series body linear acceleration (or Jerk) signals measured in the x, y and z planes. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 15. tBodyAccJerk.mean.x
* 16. tBodyAccJerk.mean.y
* 17. tBodyAccJerk.mean.z
* 18. tBodyAccJerk.std.x
* 19. tBodyAccJerk.std.y
* 20. tBodyAccJerk.std.z

tBodyGyro: num - mean and standard deviation calculations of time series body gyroscope signals measured in the x, y and z planes.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 21. tBodyGyro.mean.x
* 22. tBodyGyro.mean.y
* 23. tBodyGyro.mean.z
* 24. tBodyGyro.std.x
* 25. tBodyGyro.std.y
* 26. tBodyGyro.std.z

tBodyGyroJerk: num - mean and standard deviation calculations of the time series body angular velocity (or Jerk) signals measured in the x, y and z planes. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 27. tBodyGyroJerk.mean.x
* 28. tBodyGyroJerk.mean.y
* 29. tBodyGyroJerk.mean.z
* 30. tBodyGyroJerk.std.x
* 31. tBodyGyroJerk.std.y
* 32. tBodyGyroJerk.std.z

tBodyAccMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional time series body acceleration signals.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 33. tBodyAccMag.mean
* 34. tBodyAccMag.std

tGravityAccMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional time series gravity acceleration signals. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 35. tGravityAccMag.mean
* 36. tGravityAccMag.std

tBodyAccJerkMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional time series body linear acceleration (or Jerk) signals. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 37. tBodyAccJerkMag.mean
* 38. tBodyAccJerkMag.std

tBodyGyroMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional time series body gyroscope signals.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 39. tBodyGyroMag.mean
* 40. tBodyGyroMag.std

tBodyGyroJerkMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional time series body angular velocity (or Jerk) signals. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 41. tBodyGyroJerkMag.mean
* 42. tBodyGyroJerkMag.std

fBodyAcc: num - mean and standard deviation calculations of the frequency domain signals of the body acceleration measured in the x, y and z planes.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 43. fBodyAcc.mean.x
* 44. fBodyAcc.mean.y
* 45. fBodyAcc.mean.z
* 46. fBodyAcc.std.x
* 47. fBodyAcc.std.y
* 48. fBodyAcc.std.z

fBodyAccJerk: num - mean and standard deviation calculations of the frequency domain signals of the body linear acceleration (or Jerk) measured in the x, y and z planes. Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 49. fBodyAccJerk.mean.x
* 50. fBodyAccJerk.mean.y
* 51. fBodyAccJerk.mean.z
* 52. fBodyAccJerk.std.x
* 53. fBodyAccJerk.std.y
* 54. fBodyAccJerk.std.z

fBodyGyro: num - mean and standard deviation calculations of the frequency domain signals of the body gyroscope measured in the x, y and z planes.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 55. fBodyGyro.mean.x
* 56. fBodyGyro.mean.y
* 57. fBodyGyro.mean.z
* 58. fBodyGyro.std.x
* 59. fBodyGyro.std.y
* 60. fBodyGyro.std.z

fBodyAccMag: num - mean and standard deviation calculations of the magnitude of the three dimensional frequency domain signals of the body acceleration.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 61. fBodyAccMag.mean
* 62. fBodyAccMag.std

fBodyAccJerkMag: num - mean and standard deviation calculations of the magnitude of the three dimensional frequency domain signals of the body linear acceleration (or Jerk). Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 63. fBodyAccJerkMag.mean
* 64. fBodyAccJerkMag.std

fBodyGyroMag: num - mean and standard deviation calculations of the magnitude of the three dimensional frequency domain signals of the body gyroscope.  Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 65. fBodyGyroMag.mean
* 66. fBodyGyroMag.std

fBodyGyroJerkMag: num - mean and standard deviation calculations of the magnitude of the three-dimensional frequency domain signals of the body angular velocity (or Jerk). Calculations are a summary of all measurements taken for each activity performed by a given subject.

* 67. fBodyGyroJerkMag.mean
* 68. fBodyGyroJerkMag.std