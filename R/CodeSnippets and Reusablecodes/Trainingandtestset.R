


# After normalization Standarise the data to create a KNN model with K values Intial start Function
# knnresult( data1 = "dataset with the values of the Features excluding Target" ,
#            target1 = " Dataset with the Targer Features 
#            prob1 = " Provide the Validation Proablility ex( c(0.80, 0.20) ) 
#            seed1= " seed number ex seed1= 1234
#            k1 = K-value number of nearest neibour
#            Distance =  Method used for distance calculation ex: ecludian)




knnresult <- function( data1, target1, prob1, seed1, k1 ,distance ) {
  
  
  # set Seed
  set.seed( seed = seed1 )
  print(seed1)
  
  # rearrainging according to the 
  gen = runif ( nrow ( data1 ) )
  data1 = data1 [ ordered (gen), ]
  
  
  # Creating 2 samples
  index = sample( 2, nrow(data1), replace = TRUE, prob=prob1)
  
  # Creaitng Traning and Test Datasets
  Trainingset = data1 [ index == 1, ]
  Testset = data1 [ index==2, ]
  TrainingLabel = target1 [ index == 1 ]
  TestLabel = target1 [ index == 2 ]
  print(testlabel)
  
  
  #calculating KNN
  model = knn( train = Trainingset,test = Testset, cl=TrainingLabel, k = k1 )
  print(summary(model))
  print(k1)
  
  # Resturn the Analysis
  return  (table(TestLabel,model))
  
}

library(ISLR)
library(class)
knnresult(iris[,1:4],iris[,5],c(0.67,0.33),1234,40,"default")
