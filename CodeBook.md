# Code Book

This code book summarizes the resulting data fields in `tidydata.txt`.

## Identifiers

* `subject` - The ID of the test subject
* `activity` - The type of activity performed when the corresponding measurements were taken

## Measurements
                      
* "timeBodyAccMeanX"                        
* "timeBodyAccMeanY"                       
* "timeBodyAccMeanZ"                        
* "timeBodyAccStdX"                        
* "timeBodyAccStdY"                         
* "timeBodyAccStdZ"                        
* "timeGravityAccMeanX"                     
* "timeGravityAccMeanY"                    
* "timeGravityAccMeanZ"                     
* "timeGravityAccStdX"                     
* "timeGravityAccStdY"                      
* "timeGravityAccStdZ"                     
* "timeBodyAccJerkMeanX"                    
* "timeBodyAccJerkMeanY"                   
* "timeBodyAccJerkMeanZ"                    
* "timeBodyAccJerkStdX"                    
* "timeBodyAccJerkStdY"                     
* "timeBodyAccJerkStdZ"                    
* "timeBodyGyrometerMeanX"                  
* "timeBodyGyrometerMeanY"                 
* "timeBodyGyrometerMeanZ"                  
* "timeBodyGyrometerStdX"                  
* "timeBodyGyrometerStdY"                   
* "timeBodyGyrometerStdZ"                  
* "timeBodyGyrometerJerkMeanX"              
* "timeBodyGyrometerJerkMeanY"             
* "timeBodyGyrometerJerkMeanZ"              
* "timeBodyGyrometerJerkStdX"              
* "timeBodyGyrometerJerkStdY"               
* "timeBodyGyrometerJerkStdZ"              
* "timeBodyAcceleratorMagnitudeMean"        
* "timeBodyAcceleratorMagnitudeStd"        
* "timeGravityAcceleratorMagnitudeMean"     
* "timeGravityAcceleratorMagnitudeStd"     
* "timeBodyAccJerkMagnitudeMean"            
* "timeBodyAccJerkMagnitudeStd"            
* "timeBodyGyrometerMagMean"                
* "timeBodyGyrometerMagStd"                
* "timeBodyGyrometerJerkMagnitudeMean"      
* "timeBodyGyrometerJerkMagnitudeStd"      
* "freqBodyAccMeanX"                        
* "freqBodyAccMeanY"                       
* "freqBodyAccMeanZ"                        
* "freqBodyAccStdX"                        
* "freqBodyAccStdY"                         
* "freqBodyAccStdZ"                        
* "freqBodyAccMeanFreqX"                    
* "freqBodyAccMeanFreqY"                   
* "freqBodyAccMeanFreqZ"                    
* "freqBodyAccJerkMeanX"                   
* "freqBodyAccJerkMeanY"                    
* "freqBodyAccJerkMeanZ"                   
* "freqBodyAccJerkStdX"                     
* "freqBodyAccJerkStdY"                    
* "freqBodyAccJerkStdZ"                     
* "freqBodyAccJerkMeanFreqX"               
* "freqBodyAccJerkMeanFreqY"                
* "freqBodyAccJerkMeanFreqZ"               
* "freqBodyGyrometerMeanX"                  
* "freqBodyGyrometerMeanY"                 
* "freqBodyGyrometerMeanZ"                  
* "freqBodyGyrometerStdX"                  
* "freqBodyGyrometerStdY"                   
* "freqBodyGyrometerStdZ"                  
* "freqBodyGyrometerMeanFreqX"              
* "freqBodyGyrometerMeanFreqY"             
* "freqBodyGyrometerMeanFreqZ"              
* "freqBodyAcceleratorMagnitudeMean"       
* "freqBodyAcceleratorMagnitudeStd"         
* "freqBodyAcceleratorMagnitudeMeanFreq"   
* "freqBodyAccJerkMagnitudeMean"            
* "freqBodyAccJerkMagnitudeStd"            
* "freqBodyAccJerkMagnitudeMeanFreq"        
* "freqBodyGyrometerMagMean"               
* "freqBodyGyrometerMagStd"                 
* "freqBodyGyrometerMagMeanFreq"           
* "freqBodyGyrometerJerkMagnitudeMean"      
* "freqBodyGyrometerJerkMagnitudeStd"      
* "freqBodyGyrometerJerkMagnitudeMeanFreq"  
* "angletBodyAccMean,gravity"              
* "angletBodyAccJerkMean,gravityMean"       
* "angletBodyGyrometerMean,gravityMean"    
* "angletBodyGyrometerJerkMean,gravityMean" 
* "angleX,gravityMean"                     
* "angleY,gravityMean"                      
* "angleZ,gravityMean"   

## Activity Labels

* `WALKING` (value `1`): subject was walking during the test
* `WALKING_UPSTAIRS` (value `2`): subject was walking up a staircase during the test
* `WALKING_DOWNSTAIRS` (value `3`): subject was walking down a staircase during the test
* `SITTING` (value `4`): subject was sitting during the test
* `STANDING` (value `5`): subject was standing during the test
* `LAYING` (value `6`): subject was laying down during the test

More information about the dataset may be found here: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
