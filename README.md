# tidydata_avg
Getting and Cleaning Data - Course Project
==========================================
"Getting and Cleaning data" project of Getting and Cleaning Data coursera course.

It uses the following data: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

## Files

The code works with data uncompressed in the same direcotry where the codes are located.

`CodeBook.md` describes the variables, the data, and any transformations or work that was performed to clean up the data.

`run_analysis.R` contains all the code to perform the analyses described in the 5 steps.It works the following way:
1. Read the datasets.
2. Assign variable names to the data sets.
3. Merges the datasets.
4. Extracts mean, std data to a new data with subject and activity data.
5. Appropriately labels the data set with descriptive variable names.
6. reates a second, independent tidy data set with the average of each variable for each activity and each subject.
7. Creates a tidy dataset that consists of the average (mean) value of each
   variable for each subject and activity pair.
8. Saves the data to tidydata_avg.txt

The output of the 5th step is called `tidydata_avg.txt`
