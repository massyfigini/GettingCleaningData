##The original data set

The original data are described in the original dataset.  
The dataset includes the following files:  
1. 'features_info.txt': Shows information about the variables used on the feature vector.  
2. 'features.txt': List of all features.  
3. 'activity_labels.txt': Links the class labels with their activity name.  
4. 'train/X_train.txt': Training set.  
5. 'train/y_train.txt': Training labels.  
6. 'test/X_test.txt': Test set.  
7. 'test/y_test.txt': Test labels.  
8. 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.  
9. 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis.  
10. 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration.  
11. 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second.  


##New variables

The Script "run_analysis.R" create new variables:  
1. training_x, training_y, training_subject, test_x, test_y, test_subject contains the data from the downloaded files.  
2. features and activity contains the names for the dataset.  
3. x, y and subject merge the previous datasets to further analysis.  
4. all merges x, y and subject in a single dataset.  
5. averages contains the relevant averages which will be later stored in the "averages.txt" file.  


##Columns of the new data set

After the analysis, these are the column of the "averages" new data set:  
1. "subject"  
2. "activity"  
3. "tBodyAcc-mean()-X"          
4. "tBodyAcc-mean()-Y"           
5. "tBodyAcc-mean()-Z"           
6. "tBodyAcc-std()-X"           
7. "tBodyAcc-std()-Y"            
8. "tBodyAcc-std()-Z"            
9. "tGravityAcc-mean()-X"       
10. "tGravityAcc-mean()-Y"        
11. "tGravityAcc-mean()-Z"        
12. "tGravityAcc-std()-X"        
13. "tGravityAcc-std()-Y"         
14. "tGravityAcc-std()-Z"         
15. "tBodyAccJerk-mean()-X"      
16. "tBodyAccJerk-mean()-Y"       
17. "tBodyAccJerk-mean()-Z"       
18. "tBodyAccJerk-std()-X"       
19. "tBodyAccJerk-std()-Y"        
20. "tBodyAccJerk-std()-Z"        
21. "tBodyGyro-mean()-X"         
22. "tBodyGyro-mean()-Y"          
23. "tBodyGyro-mean()-Z"          
24. "tBodyGyro-std()-X"          
25. "tBodyGyro-std()-Y"           
26. "tBodyGyro-std()-Z"           
27. "tBodyGyroJerk-mean()-X"     
28. "tBodyGyroJerk-mean()-Y"      
29. "tBodyGyroJerk-mean()-Z"      
30. "tBodyGyroJerk-std()-X"      
31. "tBodyGyroJerk-std()-Y"       
32. "tBodyGyroJerk-std()-Z"       
33. "tBodyAccMag-mean()"         
34. "tBodyAccMag-std()"           
35. "tGravityAccMag-mean()"       
36. "tGravityAccMag-std()"       
37. "tBodyAccJerkMag-mean()"      
38. "tBodyAccJerkMag-std()"       
39. "tBodyGyroMag-mean()"        
40. "tBodyGyroMag-std()"          
41. "tBodyGyroJerkMag-mean()"     
42. "tBodyGyroJerkMag-std()"     
43. "fBodyAcc-mean()-X"           
44. "fBodyAcc-mean()-Y"           
45. "fBodyAcc-mean()-Z"          
46. "fBodyAcc-std()-X"            
47. "fBodyAcc-std()-Y"            
48. "fBodyAcc-std()-Z"           
49. "fBodyAccJerk-mean()-X"       
50. "fBodyAccJerk-mean()-Y"       
51. "fBodyAccJerk-mean()-Z"      
52. "fBodyAccJerk-std()-X"        
53. "fBodyAccJerk-std()-Y"        
54. "fBodyAccJerk-std()-Z"       
55. "fBodyGyro-mean()-X"          
56. "fBodyGyro-mean()-Y"          
57. "fBodyGyro-mean()-Z"         
58. "fBodyGyro-std()-X"           
59. "fBodyGyro-std()-Y"           
60. "fBodyGyro-std()-Z"          
61. "fBodyAccMag-mean()"          
62. "fBodyAccMag-std()"           
63. "fBodyBodyAccJerkMag-mean()" 
64. "fBodyBodyAccJerkMag-std()"   
65. "fBodyBodyGyroMag-mean()"     
66. "fBodyBodyGyroMag-std()"     
67. "fBodyBodyGyroJerkMag-mean()" 
68. "fBodyBodyGyroJerkMag-std()"  

"subject" contains the number of the volunteer.  
"activity" contains the activity (possible activities are: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.)   
In the other columns, '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.  
tBodyAcc-XYZ  
tGravityAcc-XYZ  
tBodyAccJerk-XYZ  
tBodyGyro-XYZ  
tBodyGyroJerk-XYZ  
tBodyAccMag  
tGravityAccMag  
tBodyAccJerkMag  
tBodyGyroMag  
tBodyGyroJerkMag  
fBodyAcc-XYZ  
fBodyAccJerk-XYZ  
fBodyGyro-XYZ  
fBodyAccMag  
fBodyAccJerkMag  
fBodyGyroMag  
fBodyGyroJerkMag  

mean() represent the mean value,  
std() represent the Standard deviation  
