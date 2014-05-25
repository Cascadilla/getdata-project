###Code Book

## features
input data from features.txt

## activity_labels
input data from activity_labels.txt

## subject_test
input data from test/subject_test.txt

## y_test
input data from test/y_test.txt

## activity_test
Left join result of y_test and activity_labels

## X_test
input data from test/X_test.txt

## test_data
combination of subject_test, activity_test, X_test

## subject_train
input data from train/subject_train.txt
colnames(subject_train) <- c("subject")

## y_train
input data from train/y_train.txt

## activity_train
Left join result of y_train and activity_labels

## X_train
input data from train/X_train.txt

## train_data
combination of subject_train, activity_train, X_train

## full_data
Merges the train dataset and the test dataset to create one data set

## ptn
regular expression to match only mean() and std()

## col_names
matched features with regular expression pattern ptn

## clean_data
subset of full_data with only the required columns

## clean_data_avg
Final tidy dataset
