##Install dependencies, commented incase dependencies are already present.
# source("https://bioconductor.org/biocLite.R")
# install.packages("knitr", repos='http://cran.us.r-project.org')
# install.packages("rmarkdown", repos='http://cran.us.r-project.org')
# biocLite("preprocessCore")
# install.packages("readr")
# install.packages("DMwR2")
# install.packages("installr")
# install.pandoc()


#Put here the location of the package
setwd("./PredictionPackage_20170215/")

RdataF = "./PredictionPackage_20170215.Rdata"
functionFile = "./PredictorFunctions.R"
ImputationTrainingMatrix <- "./TrainingData_Babraham_Reizel_Cannon.txt"
covFol = "./bismarkFiles/"
readDepth = 5

params = list(covFolder = covFol, RdataFile =RdataF, sourceFunctions=functionFile, ReadDepth = readDepth, ImputationTrainingMatrix = ImputationTrainingMatrix)

#Render mark down
rmarkdown::render('./ImputationAndPrediction_github.Rmd',
                  params = params,
                  output_file = paste('./ImputationAndPrediction.html',sep=""))
