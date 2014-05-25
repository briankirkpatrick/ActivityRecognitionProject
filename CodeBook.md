## CodeBook for ActivityRecognitionProject

###Data Source

For more information on the data, read the following files from the downloaded source data referenced in the README.MD file of this repository:
* README.txt
* features_info.txt

Also see the UCI Machine Learning Repository website for more details (link below active on 5/25/2014):

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

###Variables
1. "subject.id.number" : int - the unique identifier for each of the 30 participants
2. "activity": Factor - description of the given activity of daily living performed for a given set of measurements
	* laying
	* sitting
	* standing
	* walkingupstairs
	* walkingdownstairs
	*walking
3. "tBodyAcc.mean.X"
4. "tBodyAcc.mean.Y"          
5. "tBodyAcc.mean.Z"
6. "tBodyAcc.std.X"           
7. "tBodyAcc.std.Y"
8. "tBodyAcc.std.Z"           
9. "tGravityAcc.mean.X"
10. "tGravityAcc.mean.Y"       
11. "tGravityAcc.mean.Z"        "tGravityAcc.std.X"        
[13] "tGravityAcc.std.Y"         "tGravityAcc.std.Z"        
[15] "tBodyAccJerk.mean.X"       "tBodyAccJerk.mean.Y"      
[17] "tBodyAccJerk.mean.Z"       "tBodyAccJerk.std.X"       
[19] "tBodyAccJerk.std.Y"        "tBodyAccJerk.std.Z"       
[21] "tBodyGyro.mean.X"          "tBodyGyro.mean.Y"         
[23] "tBodyGyro.mean.Z"          "tBodyGyro.std.X"          
[25] "tBodyGyro.std.Y"           "tBodyGyro.std.Z"          
[27] "tBodyGyroJerk.mean.X"      "tBodyGyroJerk.mean.Y"     
[29] "tBodyGyroJerk.mean.Z"      "tBodyGyroJerk.std.X"      
[31] "tBodyGyroJerk.std.Y"       "tBodyGyroJerk.std.Z"      
[33] "tBodyAccMag.mean"          "tBodyAccMag.std"          
[35] "tGravityAccMag.mean"       "tGravityAccMag.std"       
[37] "tBodyAccJerkMag.mean"      "tBodyAccJerkMag.std"      
[39] "tBodyGyroMag.mean"         "tBodyGyroMag.std"         
[41] "tBodyGyroJerkMag.mean"     "tBodyGyroJerkMag.std"     
[43] "fBodyAcc.mean.X"           "fBodyAcc.mean.Y"          
[45] "fBodyAcc.mean.Z"           "fBodyAcc.std.X"           
[47] "fBodyAcc.std.Y"            "fBodyAcc.std.Z"           
[49] "fBodyAccJerk.mean.X"       "fBodyAccJerk.mean.Y"      
[51] "fBodyAccJerk.mean.Z"       "fBodyAccJerk.std.X"       
[53] "fBodyAccJerk.std.Y"        "fBodyAccJerk.std.Z"       
[55] "fBodyGyro.mean.X"          "fBodyGyro.mean.Y"         
[57] "fBodyGyro.mean.Z"          "fBodyGyro.std.X"          
[59] "fBodyGyro.std.Y"           "fBodyGyro.std.Z"          
[61] "fBodyAccMag.mean"          "fBodyAccMag.std"          
[63] "fBodyBodyAccJerkMag.mean"  "fBodyBodyAccJerkMag.std"  
[65] "fBodyBodyGyroMag.mean"     "fBodyBodyGyroMag.std"     
[67] "fBodyBodyGyroJerkMag.mean" "fBodyBodyGyroJerkMag.std