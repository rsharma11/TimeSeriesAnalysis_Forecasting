# Keras R
# run this to install keras and tensorflow
 devtools::install_github("rstudio/keras")
 tensorflow::install_tensorflow()

library(tidyverse)
library(kerasR)
library(tensorflow)
library(kerasR)

### Data Preparation

set.seed(1234)


train <- read_csv("/Users/vimal/Downloads/all/train.csv")
test <- read_csv("/Users/vimal/Downloads/all/test.csv")


train_id <- train$ID
train_labels <- train$y
test_id <- test$ID

train$y <- NULL
train$ID <- NULL
test$ID <- NULL

ntrain <- nrow(train)

# one hot encoding
df_all <- rbind(train, test)
ohe_feats = paste0("X", c(0, 1, 2, 3, 4, 5, 6, 8))





for (f in ohe_feats){
  feat_names <- paste0(f, "_", unique(df_all[[f]]))
  df_all <- cbind(df_all, do.call(rbind, lapply(df_all[[f]], function(x) {
    y <- rep(0,length(feat_names)); y[x] <- 1; names(y) <- feat_names
    return(y)})))
  
  df_all[[f]] <- NULL
}


train <- df_all[1:ntrain, ]
test <- df_all[(ntrain+1):nrow(df_all), ]





### Setup Network Topology

library(kerasR)
mod <- Sequential()

model %>% 
  layer_dense(units = ncol(train), input_shape = c(ncol(train)), activation = "relu", kernel_initializer='normal') %>% 
  layer_dense(units = 36, activation = "relu", kernel_initializer='normal') %>% 
  layer_dense(units = 6, activation = "relu", kernel_initializer='normal') %>% 
  layer_dense(units = 1, activation = "relu", kernel_initializer='normal') 

summary(model)




