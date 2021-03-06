##README for ActivityRecognitionProject

###License:
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

###The Data
The data was drawn from the UCI Machine Learning Repository.

The data set is the "Human Activity Recognition Using Smartphones Data Set"

More information about the data set can be found at the following link:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#

The data was downloaded using the following link:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

###Project Description
This project is intended to convert the supplied data into a single useable data set that isolates "key" variables into a tidy data set for further analysis.

This project does not differentiate between training subjects or test subjects.

The variables selected were the mean and standard deviations of the estimate variables calculated for each of the signal patterns.
MeanFreq() variables were not included as the goal was to isolate the mean values and standard deviations of the signal variables and not the average number of times they were measured.
Angle()mean variables were not included as the purpose of the research request was to identify the mean and standard deviations for the signal variables. This angle set of variables is the mean of a signal type applied to an additional variable derived from the measurements themselves, angle. Further, there are no corresponding standard deviation measurements to these variables which will limit the usefulness of the aggregated statistics.

The end results is a summary of the average mean and average standard deviation of the signal data for each participant further broken down to each of the 6 activities the participant completed.

###Project Notes and Assumptions

This project was written using RStudio Version 0.98.507 – © 2009-2013 RStudio, Inc. on a machine using Windows 7 - Service Pack 1.

The project assumes you have downloaded the data set from the above link and that the folder has been unzipped and is available in your working directory. If you have rearranged the files, have the data stored differently or have renamed any of the files, you may need to adjust the code.

No processing was done directly to the files, all processing was completed utilizing the R script attached here.

While this script can be run standalone in its entirety, it is intended to be run line by line and not as a fully executable program, as there are a couple of checks built in that the user should review before proceeding to the next step (these are noted as comments in the script).

The script is extensively commented with regard to step-by-step descriptions of the code.

###Files and Required Libraries

The script file is run_analysis.R
There is a CodeBook.MD file with more information on the variables and data

The data set is referenced above but the script is dependent on the following files specifically:
* features.txt
* subject_test.txt
* X_test.txt
* y_test.txt
* subject_train.txt
* X_train.txt
* y_train.txt
* activity_labels.txt

The script requires the following libraries:
* plyr
* reshape2