#Coursera: Getting and Cleaning Data Course Project

###This project is the course project in Coursera's Getting and Cleaning data class. The purpose of this project to import and clean data using R. This project requires the use of data collected by smartphones to determine the subjects activities from movements. The final transformation of the data, "run_analysis.R" when run in full, results in writing a single table for the mean of each variable by the subject and activity. The script combines all of the data, initially in seperate files, makes the variable names more understandable, and extracts only mean and standard deviation measurements. The produced file, "tidydata.txt", is included in this repository. 


#### Script Requirements
* The R Script named "run_analysis.R"" does the following:

        1. Merges the training and the test sets to create one data set.

        2. Extracts only the measurements on the mean and standard deviation for each measurement.

        3. Uses descriptive activity names to name the activities in the data set.

        4. Appropriately labels the data set with descriptive variable names. 

        5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


Citation for data:

>Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier         Parra and Jorge L. Reyes-Ortiz. A Public Domain             Dataset for Human Activity Recognition Using                Smartphones. 21th European Symposium on Artificial          Neural Networks, Computational Intelligence and             Machine Learning, ESANN 2013. Bruges, Belgium 24-26         April 2013.

Source: 
>"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"

The authors of the report, from the same source, describe the experiement: 

>"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
>The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
>Check the README.txt file for further details about this dataset.
>A video of the experiment including an example of the 6 recorded activities with one of the participants can be seen in the following link: [Web Link]
>An updated version of this dataset can be found at [Web Link]. It includes labels of postural transitions between activities and also the full raw inertial signals instead of the ones pre-processed into windows. 

>Attribute Information:

>For each record in the dataset it is provided: 
>- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration. 
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment."

