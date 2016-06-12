#Codebook

This codebook describes the steps taken and resulting data fields in tidy.txt.

###Packages
The package "plyr" is used in this script. Loading this package is included in 
"run_analysis.R"

###Code

* Step One: Merge the training and the test sets to create one data set.
* Step Two: Extract only the measurements on the mean and standard deviation for each measurement.
* Step Three: Uses descriptive activity names to name the activities in the data set.
* Step Four: Appropriately label the data set with descriptive variable names. Some names were changed for clarity, including:
** "std" changed to "StdDev"
** "()" removed and replaced with "".
** "Mag" changed to "Magnitude"
** and variables beginning with "t" changed to "time".
* Step Five: Create second tidy data set with the average of each variable for each activity and each subject. 

###Identifiers

* subject - the number assigned to the test subjects.
* activity - the type of activity performed that corresponds with the subject's movements. 

### Activity Labels
* WALKING
* WALKING_UPSTAIRS
* WALKING_DOWNSTAIRS
* SITTING
* STANDING
* LAYING

###Measurements
* [3] "TimeBodyAcc.mean.X"                 
* [4] "TimeBodyAcc.mean.Y"                 
* [5] "TimeBodyAcc.mean.Z"                 
* [6] "TimeBodyAcc.StdDev.X"               
* [7] "TimeBodyAcc.StdDev.Y"               
* [8] "TimeBodyAcc.StdDev.Z"               
* [9] "TimeGravityAcc.mean.X"              
* [10] "TimeGravityAcc.mean.Y"              
* [11] "TimeGravityAcc.mean.Z"              
* [12] "TimeGravityAcc.StdDev.X"            
* [13] "TimeGravityAcc.StdDev.Y"            
* [14] "TimeGravityAcc.StdDev.Z"            
* [15] "TimeBodyAccJerk.mean.X"             
* [16] "TimeBodyAccJerk.mean.Y"             
* [17] "TimeBodyAccJerk.mean.Z"             
* [18] "TimeBodyAccJerk.StdDev.X"           
* [19] "TimeBodyAccJerk.StdDev.Y"           
* [20] "TimeBodyAccJerk.StdDev.Z"           
* [21] "TimeBodyGyro.mean.X"                
* [22] "TimeBodyGyro.mean.Y"                
* [23] "TimeBodyGyro.mean.Z"                
* [24] "TimeBodyGyro.StdDev.X"              
* [25] "TimeBodyGyro.StdDev.Y"              
* [26] "TimeBodyGyro.StdDev.Z"              
* [27] "TimeBodyGyroJerk.mean.X"            
* [28] "TimeBodyGyroJerk.mean.Y"            
* [29] "TimeBodyGyroJerk.mean.Z"            
* [30] "TimeBodyGyroJerk.StdDev.X"          
* [31] "TimeBodyGyroJerk.StdDev.Y"          
* [32] "TimeBodyGyroJerk.StdDev.Z"          
* [33] "TimeBodyAccMagnitude.mean"          
* [34] "TimeBodyAccMagnitude.StdDev"        
* [35] "TimeGravityAccMagnitude.mean"       
* [36] "TimeGravityAccMagnitude.StdDev"     
* [37] "TimeBodyAccJerkMagnitude.mean"      
* [38] "TimeBodyAccJerkMagnitude.StdDev"    
* [39] "TimeBodyGyroMagnitude.mean"         
* [40] "TimeBodyGyroMagnitude.StdDev"       
* [41] "TimeBodyGyroJerkMagnitude.mean"     
* [42] "TimeBodyGyroJerkMagnitude.StdDev"   
* [43] "fBodyAcc.mean.X"                    
* [44] "fBodyAcc.mean.Y"                    
* [45] "fBodyAcc.mean.Z"                    
* [46] "fBodyAcc.StdDev.X"                  
* [47] "fBodyAcc.StdDev.Y"                  
* [48] "fBodyAcc.StdDev.Z"                  
* [49] "fBodyAcc.meanFreq.X"                
* [50] "fBodyAcc.meanFreq.Y"                
* [51] "fBodyAcc.meanFreq.Z"                
* [52] "fBodyAccJerk.mean.X"                
* [53] "fBodyAccJerk.mean.Y"                
* [54] "fBodyAccJerk.mean.Z"                
* [55] "fBodyAccJerk.StdDev.X"              
* [56] "fBodyAccJerk.StdDev.Y"              
* [57] "fBodyAccJerk.StdDev.Z"              
* [58] "fBodyAccJerk.meanFreq.X"            
* [59] "fBodyAccJerk.meanFreq.Y"            
* [60] "fBodyAccJerk.meanFreq.Z"            
* [61] "fBodyGyro.mean.X"                   
* [62] "fBodyGyro.mean.Y"                   
* [63] "fBodyGyro.mean.Z"                   
* [64] "fBodyGyro.StdDev.X"                 
* [65] "fBodyGyro.StdDev.Y"                 
* [66] "fBodyGyro.StdDev.Z"                 
* [67] "fBodyGyro.meanFreq.X"               
* [68] "fBodyGyro.meanFreq.Y"               
* [69] "fBodyGyro.meanFreq.Z"               
* [70] "fBodyAccMagnitude.mean"             
* [71] "fBodyAccMagnitude.StdDev"           
* [72] "fBodyAccMagnitude.meanFreq"         
* [73] "fBodyBodyAccJerkMagnitude.mean"     
* [74] "fBodyBodyAccJerkMagnitude.StdDev"   
* [75] "fBodyBodyAccJerkMagnitude.meanFreq" 
* [76] "fBodyBodyGyroMagnitude.mean"        
* [77] "fBodyBodyGyroMagnitude.StdDev"      
* [78] "fBodyBodyGyroMagnitude.meanFreq"    
* [79] "fBodyBodyGyroJerkMagnitude.mean"    
* [80] "fBodyBodyGyroJerkMagnitude.StdDev"  
* [81] "fBodyBodyGyroJerkMagnitude.meanFreq"


