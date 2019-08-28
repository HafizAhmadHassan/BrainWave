# Loading the package
library(randomForest)

# Importing the data
stack_median_df<-read.csv(file="stack_median_df.csv")
stack_median_df<-stack_median_df[,-1]
stack_median_df_na <- na.omit(stack_median_df)


# Running Unsupervised Random Forests
stack_median_df_na<-stack_median_df_na[1:1000,]
median_rf <- randomForest(stack_median_df_na, importance=TRUE, proximity=FALSE, ntree=500, type=unsupervised, forest=NULL)
