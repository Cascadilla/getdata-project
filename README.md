getdata-project
===============

run_analysis.R does the following:
It first reads the metadata including the feature labels and activity labels.
It then reads the test dataset and train dataset.
The datasets are joined/combined with the metadata with descriptive activity names and feature labels.
Then the two datasets are merged together to create one data set.
To create final tidy dataset, only the measurements on the mean and standard deviation for each measurement are extracted. 
At last, an independent tidy data set is created to record the average of each variable for each activity and each subject.

### Note
In order to run run_analysis.R, you need to have the input data in the correct path.
Please refer to the read.table usage in run_analysis.R for the exact path.