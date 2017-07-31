# CodeBook

This codebook contains information about the R script "run_analysis.R" found here.
The script assumes data was already downloaded and extracted, and that the correct folder is found in the working directory.
It also assumes that the dplyr library is installed.
Description fo data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.
Data source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Output file presents all means of 86 of 561 measurments taken in the experiment, that contain mean or std type of measurement.
The means are grouped by subject and activity and measurment names are informative for tidyness.

Names of 86 measurments:
 [1] "time_BodyAcc_mean_X"                    "time_BodyAcc_mean_Y"                   
 [3] "time_BodyAcc_mean_Z"                    "time_GravityAcc_mean_X"                
 [5] "time_GravityAcc_mean_Y"                 "time_GravityAcc_mean_Z"                
 [7] "time_BodyAccJerk_mean_X"                "time_BodyAccJerk_mean_Y"               
 [9] "time_BodyAccJerk_mean_Z"                "time_BodyGyro_mean_X"                  
[11] "time_BodyGyro_mean_Y"                   "time_BodyGyro_mean_Z"                  
[13] "time_BodyGyroJerk_mean_X"               "time_BodyGyroJerk_mean_Y"              
[15] "time_BodyGyroJerk_mean_Z"               "time_BodyAccMag_mean"                  
[17] "time_GravityAccMag_mean"                "time_BodyAccJerkMag_mean"              
[19] "time_BodyGyroMag_mean"                  "time_BodyGyroJerkMag_mean"             
[21] "frequency_BodyAcc_mean_X"               "frequency_BodyAcc_mean_Y"              
[23] "frequency_BodyAcc_mean_Z"               "frequency_BodyAcc_meanFreq_X"          
[25] "frequency_BodyAcc_meanFreq_Y"           "frequency_BodyAcc_meanFreq_Z"          
[27] "frequency_BodyAccJerk_mean_X"           "frequency_BodyAccJerk_mean_Y"          
[29] "frequency_BodyAccJerk_mean_Z"           "frequency_BodyAccJerk_meanFreq_X"      
[31] "frequency_BodyAccJerk_meanFreq_Y"       "frequency_BodyAccJerk_meanFreq_Z"      
[33] "frequency_BodyGyro_mean_X"              "frequency_BodyGyro_mean_Y"             
[35] "frequency_BodyGyro_mean_Z"              "frequency_BodyGyro_meanFreq_X"         
[37] "frequency_BodyGyro_meanFreq_Y"          "frequency_BodyGyro_meanFreq_Z"         
[39] "frequency_BodyAccMag_mean"              "frequency_BodyAccMag_meanFreq"         
[41] "frequency_BodyBodyAccJerkMag_mean"      "frequency_BodyBodyAccJerkMag_meanFreq" 
[43] "frequency_BodyBodyGyroMag_mean"         "frequency_BodyBodyGyroMag_meanFreq"    
[45] "frequency_BodyBodyGyroJerkMag_mean"     "frequency_BodyBodyGyroJerkMag_meanFreq"
[47] "angle_tBodyAccMean_gravity"             "angle_tBodyAccJerkMean_gravityMean"    
[49] "angle_tBodyGyroMean_gravityMean"        "angle_tBodyGyroJerkMean_gravityMean"   
[51] "angle_X_gravityMean"                    "angle_Y_gravityMean"                   
[53] "angle_Z_gravityMean"                    "time_BodyAcc_std_X"                    
[55] "time_BodyAcc_std_Y"                     "time_BodyAcc_std_Z"                    
[57] "time_GravityAcc_std_X"                  "time_GravityAcc_std_Y"                 
[59] "time_GravityAcc_std_Z"                  "time_BodyAccJerk_std_X"                
[61] "time_BodyAccJerk_std_Y"                 "time_BodyAccJerk_std_Z"                
[63] "time_BodyGyro_std_X"                    "time_BodyGyro_std_Y"                   
[65] "time_BodyGyro_std_Z"                    "time_BodyGyroJerk_std_X"               
[67] "time_BodyGyroJerk_std_Y"                "time_BodyGyroJerk_std_Z"               
[69] "time_BodyAccMag_std"                    "time_GravityAccMag_std"                
[71] "time_BodyAccJerkMag_std"                "time_BodyGyroMag_std"                  
[73] "time_BodyGyroJerkMag_std"               "frequency_BodyAcc_std_X"               
[75] "frequency_BodyAcc_std_Y"                "frequency_BodyAcc_std_Z"               
[77] "frequency_BodyAccJerk_std_X"            "frequency_BodyAccJerk_std_Y"           
[79] "frequency_BodyAccJerk_std_Z"            "frequency_BodyGyro_std_X"              
[81] "frequency_BodyGyro_std_Y"               "frequency_BodyGyro_std_Z"              
[83] "frequency_BodyAccMag_std"               "frequency_BodyBodyAccJerkMag_std"      
[85] "frequency_BodyBodyGyroMag_std"          "frequency_BodyBodyGyroJerkMag_std"
