##Predictor functions

#Revert age from log scale to normal scale. 
#  Expectes a named vector or matrix. 
#  Returns a named vector.

revertAge <-  function(predictedAge, gastation=3){
  ages <- NULL
  for(i in 1:length(predictedAge)){
    ages <- c(ages, (exp(transformNLS(predictedAge[i])) - gastation))
  }
  if(is.null(rownames(predictedAge))){
    if(!is.null(names(predictedAge))){
      names(ages) <- names(predictedAge)
    }
  } else {
    names(ages) <- rownames(predictedAge)  
  }
  
  return(ages)
}

#Calcuates the ages in a log scale. 
#  Expectes a vecto with agesr. 
#  Returns a vector of transformed ages.

recalcAge <- function(originalAge, gastation=3){
  ages <- NULL
  for(i in 1:length(originalAge)){
    ages <- c(ages, log(originalAge[i]+gastation))
  }
  return(ages)
}

##Added transformation to transform the summed beta to log scale age.
transformNLS <- function(x){
  return(0.1207*x^2+1.2424*x+2.5440)
}