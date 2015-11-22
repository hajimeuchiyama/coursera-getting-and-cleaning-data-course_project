
Coursera - Getting and Cleaning Data: Course Project
=================

----------
- Project Name: Coursera - Getting and Cleaning Data: Course Project
- Files:
    - `run_analysis.R` (R script code)
    - `README.md` (this file)
    - `CodeBook.`md (code book)
- Data source URL: 
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
- Data for the course project:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

----------
### Overview
This README file describes how to use the submitted R script and how to verify the work for peer-review evaluation. For the information about the actual experiment about Human Activity Recognition Using Smartphones and its data set, read 'README.txt' included in the data set zip file above.

### How the Submitted R Script Works
The submitted R script performs the following steps. 

1. Merges the training and the test sets to create one data set
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names
5. From the data set in Step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject

At Step 5, it writes a text file with the file name "summary.txt" in the R working directory. The text file is identical with the one submitted to the Coursera Course Project evaluation page.

### Prerequisites before Evaluating the Submitted Work
1. Retrieve all data files specified in the instruction (refer the data source links above if necessary)
2. Extract and place them under the R working directory
	- The following files should be located in the R working directory in order for the R script to work correctly:
		- `features_info.txt`
		- `features.txt`
		- `activity_labels.txt`
		- `train/X_train.txt`
		- `train/y_train.txt`
		- `train/subject_train.txt`
		- `test/X_test.txt`
		- `test/y_test.txt`
		- `test/subject_test.txt`
    - The directory structure and all file names must be intact as specified since they are referenced in a *hard-coded* manner in the R script.  Do not change any of these, otherwise the R script will not work properly.
3. Download the submitted R script ("run_analysis.R") and save it in the R working directory.
4. The R script uses the following R packages. Install them if not done yet.
  - `plyr`
  - `dplyr`

### How to Verify the Submitted Work

#### 1. Verify the Performance of the submitted R Script

- In R console, `source` the downloaded `run_analysis.R` file by running the following command.

```
source(run_analysis)
```

- Execute `run_analysis` script.   

```
run_analysis()
```

- Return object is a data frame required by Step 5. Verify the contents by typing the following command:

```
View(result)
```

*In this example, it is named 'result' but you can use any valid name.*
- Verify "summary.txt" is also created in the working directory
- Type the following commands to load the text file into another data frame and review:

```
result2 <- read.table("summary.txt", header = TRUE)
View(result2)
```

#### 2. Verify if the Submitted Dataset Meets the Tidy Data Principles
A tidy dataset should meet the tidy data principles introduced in week 1 as follows:

 - Each variable you measure should be in one column
 - Each different observation of that variable should be in a different row

#### 3. Verify if the variables are named descriptively
Review the code book (`CodeBook.md`) and the submitted tidy data set to determine if the variables names are descriptive.

### References

David Hood's guidline: https://thoughtfulbloke.wordpress.com/2015/09/09/getting-and-cleaning-the-assignment/

Hadley Wickham'S Tidy Data PDF: http://vita.had.co.nz/papers/tidy-data.pdf


------------------------------
## Instruction (from Coursera Course Project Instruction page)
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

 You should create one R script called run_analysis.R that does the following. 
Merges the training and the test sets to create one data set.
Extracts only the measurements on the mean and standard deviation for each measurement. 
Uses descriptive activity names to name the activities in the data set
Appropriately labels the data set with descriptive variable names. 
From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Good luck!
