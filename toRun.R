##Install dependencies, commented incase dependencies are already present.
# source("https://bioconductor.org/biocLite.R")
# install.packages("knitr", repos='http://cran.us.r-project.org')
# install.packages("rmarkdown", repos='http://cran.us.r-project.org')
# biocLite("preprocessCore")
# install.packages("installr")
# require(installr)
# install.pandoc()

#Put here the location of the package
setwd("C:/OnlineFolders/Dropbox/EBI/EpigeneticClock_Mouse/Rough_figures/Prediction_package_20170120/")
setwd("E:/OnlineFolders/Dropbox/EBI/EpigeneticClock_Mouse/Rough_figures/Prediction_package_20170120/")

covFol = "./bismarkFiles/"
RdataF = "./PredictionPackage_20170120_v2.Rdata"
functionFile = "./PredictorFunctions.R"
params = list(covFolder = covFol, RdataFile =RdataF, sourceFunctions=functionFile)

#Render mark down
rmarkdown::render('./PredictingAgeLeftOutSample.Rmd', params = params)
