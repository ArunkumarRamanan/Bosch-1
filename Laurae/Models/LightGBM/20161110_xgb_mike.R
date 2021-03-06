# Libraries

my_script_is_using <- "E:/Laurae/20161110_xgb_mike"
my_script_subbed <- basename(my_script_is_using)
threads <- 12

library(data.table)
library(Matrix)
library(recommenderlab)
library(Laurae)
library(fastdigest)
library(pbapply)
library(ggplot2)
library(R.utils)
library(stringi)
library(xgboost)
library(feather)

setwd("E:/")

label <- readRDS("datasets/labels.rds")

StratifiedCV <- function(Y, folds, seed) {
  folded <- list()
  folded1 <- list()
  folded2 <- list()
  set.seed(seed)
  temp_Y0 <- which(Y == 0)
  temp_Y1 <- which(Y == 1)
  for (i in 1:folds) {
    folded1[[i]] <- sample(temp_Y0, floor(length(temp_Y0) / ((folds + 1) - i)))
    temp_Y0 <- temp_Y0[!temp_Y0 %in% folded1[[i]]]
    folded2[[i]] <- sample(temp_Y1, floor(length(temp_Y1) / ((folds + 1) - i)))
    temp_Y1 <- temp_Y1[!temp_Y1 %in% folded2[[i]]]
    folded[[i]] <- c(folded1[[i]], folded2[[i]])
  }
  return(folded)
}

folds <- StratifiedCV(label, 5, 11111)

mcc_eval_print <- function(y_prob, y_true) {
  y_true <- y_true
  
  DT <- data.table(y_true = y_true, y_prob = y_prob, key = "y_prob")
  cleaner <- !duplicated(DT[, "y_prob"], fromLast = TRUE)
  
  nump <- sum(y_true)
  numn <- length(y_true) - nump
  
  DT[, tn_v := as.numeric(cumsum(y_true == 0))]
  DT[, fp_v := cumsum(y_true == 1)]
  DT[, fn_v := numn - tn_v]
  DT[, tp_v := nump - fp_v]
  DT <- DT[cleaner, ]
  DT[, mcc_v := (tp_v * tn_v - fp_v * fn_v) / sqrt((tp_v + fp_v) * (tp_v + fn_v) * (tn_v + fp_v) * (tn_v + fn_v))]
  DT[, mcc_v := ifelse(!is.finite(mcc_v), 0, mcc_v)]
  gc(verbose = FALSE)
  
  return(max(DT[['mcc_v']]))
  
}

mcc_eval_pred <- function(y_prob, y_true) {
  y_true <- y_true
  
  DT <- data.table(y_true = y_true, y_prob = y_prob, key = "y_prob")
  cleaner <- !duplicated(DT[, "y_prob"], fromLast = TRUE)
  
  nump <- sum(y_true)
  numn <- length(y_true) - nump
  
  DT[, tn_v := as.numeric(cumsum(y_true == 0))]
  DT[, fp_v := cumsum(y_true == 1)]
  DT[, fn_v := numn - tn_v]
  DT[, tp_v := nump - fp_v]
  DT <- DT[cleaner, ]
  DT[, mcc_v := (tp_v * tn_v - fp_v * fn_v) / sqrt((tp_v + fp_v) * (tp_v + fn_v) * (tn_v + fp_v) * (tn_v + fn_v))]
  DT[, mcc_v := ifelse(!is.finite(mcc_v), 0, mcc_v)]
  
  return(DT[['y_prob']][which.max(DT[['mcc_v']])])
  
}

mcc_eval_nofail_fold <- function(pred, dtrain) {
  
  j <<- j + 1
  
  if ((j %% 2) == 1) {
    
    return(list(metric = "mcc", value = 0))
    
  } else {
    
    y_true <- getinfo(dtrain, "label")
    
    DT <- data.table(y_true = y_true, y_prob = pred, key = "y_prob")
    cleaner <- !duplicated(DT[, "y_prob"], fromLast = TRUE)
    nump <- sum(y_true)
    numn <- length(y_true) - nump
    
    DT[, tn_v := cumsum(y_true == 0)]
    DT[, fp_v := cumsum(y_true == 1)]
    DT[, fn_v := numn - tn_v]
    DT[, tp_v := nump - fp_v]
    DT <- DT[cleaner, ]
    DT[, mcc_v := (tp_v * tn_v - fp_v * fn_v) / sqrt((tp_v + fp_v) * (tp_v + fn_v) * (tn_v + fp_v) * (tn_v + fn_v))]
    DT[, mcc_v := ifelse(!is.finite(mcc_v), 0, mcc_v)]
    
    if ((j %% 50) == 0) {gc(verbose = FALSE)}
    
    return(list(metric = "mcc", value = round(max(DT[['mcc_v']]), digits = 12)))
    
  }
  
}

train <- fread("Mike/0 - Data Files/train_eng.csv", data.table = FALSE)
test <- fread("Mike/0 - Data Files/test_eng.csv", data.table = FALSE)
train$Id <- NULL
test$Id <- NULL
train$Response <- NULL
train <- train[, c(1:5, 14:123)]
test <- test[, c(1:5, 14:123)]

dtrain <- xgb.DMatrix(data = as.matrix(train), label = label, missing = NA)
gc()
dtest <- xgb.DMatrix(data = as.matrix(test), missing = NA)
gc()

predictions1 <- numeric(1183747)
predictions2 <- numeric(1183748)
predictions3 <- data.frame(matrix(rep(0, 1183748*length(folds)), nrow = 1183748))
best_iter <- 0

sink(file = file.path(my_script_is_using, "logs_ex.txt"), append = TRUE, split = TRUE)
cat("Starting modeling... on ", format(Sys.time(), "%a %b %d %Y %X"), "\n\n\n", sep = "")

for (i in 1:length(folds)) {
  
  gc(verbose = FALSE)
  dval1 <- dtrain[(1:1183747)[-folds[[i]]]]
  gc(verbose = FALSE)
  dval2 <- dtrain[(1:1183747)[folds[[i]]]]
  
  
  cat("\n\n\nFold ", i, " on ", format(Sys.time(), "%a %b %d %Y %X"), "\n\n", sep = "")
  sink(file = file.path(my_script_is_using, "logs.txt"), append = TRUE, split = FALSE)
  cat("\n\n\nFold ", i, " on ", format(Sys.time(), "%a %b %d %Y %X"), "\n\n", sep = "")
  j <- 0
  gc(verbose = FALSE)
  set.seed(11111)
  temp_model <- xgb.train(data = dval1,
                          nthread = 12,
                          nrounds = 1000000,
                          eta = 0.02,
                          depth = 10,
                          subsample = 0.70,
                          colsample_bytree = 0.70,
                          min_child_weight = 1,
                          booster = "gbtree",
                          feval = mcc_eval_nofail_fold,
                          #eval_metric = "auc",
                          maximize = TRUE,
                          early_stopping_rounds = 100,
                          objective = "binary:logistic",
                          verbose = TRUE,
                          base_score = 0.32,
                          watchlist = list(train = dval1, test = dval2))
  
  best_iter <- best_iter + (temp_model$best_iteration / length(folds))
  sink()
  cat("\nTime: ", format(Sys.time(), "%a %b %d %Y %X"), sep = "")
  gc(verbose = FALSE)
  predictions1[folds[[i]]] <- predict(temp_model, dval2, ntreelimit = temp_model$best_iteration)
  gc(verbose = FALSE)
  predictions3[, i] <- predict(temp_model, dtest, ntreelimit = temp_model$best_iteration)
  predictions2 <- predictions3[, i] + predictions2
  gc(verbose = FALSE)
  cat("\nFor ", sprintf("%04d", temp_model$best_iteration), " rounds: ", colnames(temp_model$evaluation_log)[2], ": ", temp_model$evaluation_log[[2]][temp_model$best_iteration], " - ", colnames(temp_model$evaluation_log)[3], ": ", temp_model$evaluation_log[[3]][temp_model$best_iteration], sep = "")
  temp_mcc <- mcc_eval_pred(y_prob = predictions1[folds[[i]]], y_true = label[folds[[i]]])
  temp_preds <- as.numeric(predictions1[folds[[i]]] > temp_mcc)
  cat("\nConfusion matrix:\n")
  print(table(data.frame(preds = temp_preds, truth = label[folds[[i]]])))
  print(table(data.frame(preds = temp_preds, truth = label[folds[[i]]]))/length(folds[[i]]))
  cat("Fold ", i, ": MCC=", mcc_eval_print(y_prob = predictions1[folds[[i]]], y_true = label[folds[[i]]]), "\n", sep = "")
  write.csv(predictions1, file = file.path(my_script_is_using, "predictions_oof.csv"), row.names = FALSE)
  write.csv(predictions3, file = file.path(my_script_is_using, "predictions_test_raw.csv"), row.names = FALSE)
  
}

sink()

predictions2 <- predictions2 / length(folds)
write.csv(predictions1, file = file.path(my_script_is_using, "predictions_oof.csv"), row.names = FALSE)
write.csv(predictions2, file = file.path(my_script_is_using, "predictions_test_mean.csv"), row.names = FALSE)


# gc()
# set.seed(11111)
# temp_model <- xgb.train(data = dtrain,
#                         nthread = 12,
#                         nrounds = floor(best_iter / 0.9),
#                         eta = 0.02,
#                         depth = 10,
#                         subsample = 0.70,
#                         colsample_bytree = 0.70,
#                         min_child_weight = 1,
#                         booster = "gbtree",
#                         #feval = mcc_eval_nofail,
#                         eval_metric = "auc",
#                         maximize = TRUE,
#                         objective = "binary:logistic",
#                         verbose = TRUE,
#                         base_core = 0.32,
#                         watchlist = list(test = dtrain))
# 
validationValues <- predictions1
predictedValuesCV <- predictions2
predictedValuesCVList <- predictions3
# predictedValues <- predict(temp_model, dtest)









mcc_fixed <- function(y_prob, y_true, prob) {
  
  positives <- as.logical(y_true) # label to boolean
  counter <- sum(positives) # get the amount of positive labels
  tp <- as.numeric(sum(y_prob[positives] > prob))
  fp <- as.numeric(sum(y_prob[!positives] > prob))
  tn <- as.numeric(length(y_true) - counter - fp) # avoid computing he opposite
  fn <- as.numeric(counter - tp) # avoid computing the opposite
  mcc <- (tp * tn - fp * fn) / (sqrt((tp + fp) * (tp + fn) * (tn + fp) * (tn + fn)))
  mcc <- ifelse(is.na(mcc), -1, mcc)
  return(mcc)
  
}

mcc_eval_print <- function(y_prob, y_true) {
  y_true <- y_true
  
  DT <- data.table(y_true = y_true, y_prob = y_prob, key = "y_prob")
  cleaner <- !duplicated(DT[, "y_prob"], fromLast = TRUE)
  
  nump <- sum(y_true)
  numn <- length(y_true) - nump
  
  DT[, tn_v := as.numeric(cumsum(y_true == 0))]
  DT[, fp_v := cumsum(y_true == 1)]
  DT[, fn_v := numn - tn_v]
  DT[, tp_v := nump - fp_v]
  DT <- DT[cleaner, ]
  DT[, mcc_v := (tp_v * tn_v - fp_v * fn_v) / sqrt((tp_v + fp_v) * (tp_v + fn_v) * (tn_v + fp_v) * (tn_v + fn_v))]
  DT[, mcc_v := ifelse(!is.finite(mcc_v), 0, mcc_v)]
  gc(verbose = FALSE)
  
  return(max(DT[['mcc_v']]))
  
}

mcc_eval_pred <- function(y_prob, y_true) {
  y_true <- y_true
  
  DT <- data.table(y_true = y_true, y_prob = y_prob, key = "y_prob")
  cleaner <- !duplicated(DT[, "y_prob"], fromLast = TRUE)
  
  nump <- sum(y_true)
  numn <- length(y_true) - nump
  
  DT[, tn_v := as.numeric(cumsum(y_true == 0))]
  DT[, fp_v := cumsum(y_true == 1)]
  DT[, fn_v := numn - tn_v]
  DT[, tp_v := nump - fp_v]
  DT <- DT[cleaner, ]
  DT[, mcc_v := (tp_v * tn_v - fp_v * fn_v) / sqrt((tp_v + fp_v) * (tp_v + fn_v) * (tn_v + fp_v) * (tn_v + fn_v))]
  DT[, mcc_v := ifelse(!is.finite(mcc_v), 0, mcc_v)]
  
  return(DT[['y_prob']][which.max(DT[['mcc_v']])])
  
}

FastROC <- function(y, x) {
  
  # y = actual
  # x = predicted
  x1 = as.numeric(x[y == 1])
  n1 = as.numeric(length(x1))
  x2 = as.numeric(x[y == 0])
  n2 = as.numeric(length(x2))
  r = rank(c(x1,x2))
  return((sum(r[1:n1]) - n1 * (n1 + 1) / 2) / (n1 * n2))
  
}


Rescaler <- function(folds, CV_Preds, Test_Preds) {
  All_Scale <- list()
  CV_All <- numeric(1183747)
  Test_Scale <- numeric(1183748)
  for (i in 1:length(folds)) {
    All_Scale[[i]] <- c(CV_Preds[[i]], Test_Preds[[i]])
    All_Scale[[i]] <- rank(All_Scale[[i]], ties.method = "average") / length(All_Scale[[i]])
    CV_Preds[[i]] <- All_Scale[[i]][1:length(CV_Preds[[i]])]
    CV_All[folds[[i]]] <- CV_Preds[[i]]
    Test_Preds[[i]] <- All_Scale[[i]][(length(CV_Preds[[i]]) + 1):length(All_Scale[[i]])]
    Test_Scale <- Test_Scale + (Test_Preds[[i]] / length(folds))
  }
  returned <- list()
  returned[["CV"]] <- CV_All
  returned[["CV_Fold"]] <- CV_Preds
  returned[["Test"]] <- Test_Scale
  returned[["Test_Fold"]] <- Test_Preds
  
  return(returned)
}


# Know what is inside


AnalysisFunc <- function(label, folds, validationValues, predictedValuesCV, predictedValuesCVList = NA) {
  # Label = your label
  # Folds = your fold list
  # validationValues = your validation values (out of fold predictions)
  # predictedValuesCV = your predicted values (on test data) from CV (set as "NA" if you don't have any)
  
  
  # Setup tee
  sink(file = file.path(my_script_is_using, "diagnostics.txt"), append = FALSE, split = TRUE)
  cat("```r\n")
  
  # Get AUC metric information
  temp_auc <- numeric(length(folds))
  best_auc <- 0
  for (j in 1:length(folds)) {
    temp_auc[j] <- FastROC(y = label[folds[[j]]], x = validationValues[folds[[j]]])
    best_auc <- best_auc + (temp_auc[j] / length(folds))
    cat("Fold ", j, ": AUC=", sprintf("%.07f", temp_auc[j]), "\n", sep = "")
  }
  cat("AUC: ", sprintf("%.07f", mean(temp_auc)), " + ", sprintf("%.07f", sd(temp_auc)), "\n", sep = "")
  cat("Average AUC using all data: ", sprintf("%.07f", FastROC(y = label, x = validationValues)), "\n\n\n", sep = "")
  
  
  # Get MCC metric information
  temp_mcc <- numeric(length(folds))
  temp_thresh <- numeric(length(folds))
  temp_positives <- numeric(length(folds))
  temp_detection <- numeric(length(folds))
  temp_true <- numeric(length(folds))
  temp_undetect <- numeric(length(folds))
  best_mcc <- 0
  for (j in 1:length(folds)) {
    
    temp_mcc[j] <- mcc_eval_print(y_prob = validationValues[folds[[j]]], y_true = label[folds[[j]]])
    temp_thresh[j] <- mcc_eval_pred(y_prob = validationValues[folds[[j]]], y_true = label[folds[[j]]])
    mini_preds <- validationValues[folds[[j]]] > temp_thresh[[j]]
    temp_positives[j] <- sum(mini_preds)
    temp_detection[j] <- 100 * temp_positives[j] / sum(label[folds[[j]]])
    temp_true[j] <- sum((mini_preds[mini_preds == TRUE] == label[folds[[j]]][mini_preds == TRUE]))
    temp_undetect[j] <- sum(label[folds[[j]]]) - temp_true[j]
    temp_true[j] <- 100 * temp_true[j] / sum(length(mini_preds[mini_preds == TRUE]))
    best_mcc <- best_mcc + (temp_mcc[j] / length(folds))
    cat("Fold ", j, ": MCC=", sprintf("%.07f", temp_mcc[j]), " (", sprintf("%04d", temp_positives[j]), " [", sprintf("%05.2f", temp_detection[j]), "%] positives), threshold=", sprintf("%.07f", temp_thresh[j]), " => True positives = ", sprintf("%06.3f", temp_true[j]), "%\n", sep = "")
    
  }
  cat("MCC: ", sprintf("%.07f", mean(temp_mcc)), " + ", sprintf("%.07f", sd(temp_mcc)), "\n", sep = "")
  cat("Threshold: ", sprintf("%.07f", mean(temp_thresh)), " + ", sprintf("%.07f", sd(temp_thresh)), "\n", sep = "")
  cat("Positives: ", sprintf("%06.2f", mean(temp_positives)), " + ", sprintf("%06.2f", sd(temp_positives)), "\n", sep = "")
  cat("Detection Rate %: ", sprintf("%06.3f", mean(temp_detection)), " + ", sprintf("%06.3f", sd(temp_detection)), "\n", sep = "")
  cat("True positives %: ", sprintf("%06.3f", mean(temp_true)), " + ", sprintf("%06.3f", sd(temp_true)), "\n", sep = "")
  cat("Undetected positives: ", sprintf("%07.2f", mean(temp_undetect)), " + ", sprintf("%07.2f", sd(temp_undetect)), "\n", sep = "")
  cat("Average MCC on all data (5 fold): ", sprintf("%.07f", mcc_fixed(y_prob = validationValues, y_true = label, prob = mean(temp_thresh))), ", threshold=", sprintf("%.07f", mean(temp_thresh)), "\n", sep = "")
  cat("Average MCC using all data: ", sprintf("%.07f", mcc_eval_print(y_prob = validationValues, y_true = label)), ", threshold=", sprintf("%.07f", mcc_eval_pred(y_prob = validationValues, y_true = label)), "\n\n\n", sep = "")
  
  
  if (length(predictedValuesCV) > 1) {
    
    # Create overfitted submission from all data
    best_mcc1 <- mcc_eval_pred(y_prob = validationValues, y_true = label)
    submission0_ov <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0_ov$Response <- as.numeric(predictedValuesCV > best_mcc1)
    best_count1 <- sum(submission0_ov$Response == 1)
    cat("Submission overfitted threshold on all MCC positives: ", best_count1, "\n\n", sep = "")
    write.csv(submission0_ov, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_", sprintf("%.06f", best_mcc1), "_", best_count1, ".csv", sep = "")), row.names = FALSE)
    
    # Create CV submission from validation
    best_mcc2 <- mean(temp_thresh)
    submission0 <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0$Response <- as.numeric(predictedValuesCV > best_mcc2)
    best_count2 <- sum(submission0$Response == 1)
    cat("Submission average validated threshold on all MCC positives: ", best_count2, "\n\n", sep = "")
    write.csv(submission0, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_", sprintf("%.06f", best_mcc2), "_", best_count2, ".csv", sep = "")), row.names = FALSE)
    
    # Create average of the two previous submissions
    best_mcc3 <- (best_mcc1 + best_mcc2) / 2
    submission0_ex <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0_ex$Response <- as.numeric(predictedValuesCV > best_mcc3)
    best_count3 <- sum(submission0_ex$Response == 1)
    cat("Submission average of overfit+validated threshold positives: ", best_count3, "\n\n", sep = "")
    write.csv(submission0_ex, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_", sprintf("%.06f", best_mcc3), "_", best_count3, ".csv", sep = "")), row.names = FALSE)
    
    # Create files for stacker
    write.csv(validationValues, file = file.path(my_script_is_using, "aaa_stacker_preds_train_headerY.csv"), row.names = FALSE)
    write.csv(predictedValuesCV, file = file.path(my_script_is_using, "aaa_stacker_preds_test_headerY.csv"), row.names = FALSE)
    
    # Setup things for ranking
    cat("\n\n\nAnalzying and ranking predictions...\n\n")
    temp_validation <- list()
    for (i in 1:length(folds)) {
      temp_validation[[i]] <- validationValues[folds[[i]]]
    }
    extra_scale <- Rescaler(folds, temp_validation, predictedValuesCVList)
    write.csv(extra_scale$CV, file = file.path(my_script_is_using, "aaa_stacker_preds_train_headerY_scale.csv"), row.names = FALSE)
    write.csv(extra_scale$Test, file = file.path(my_script_is_using, "aaa_stacker_preds_test_headerY_scale.csv"), row.names = FALSE)
    
    for (i in 1:length(folds)) {
      temp_validation[[i]] <- validationValues[folds[[i]]]
      cat("Fold ", i, ": preds=", mean(validationValues[folds[[i]]]), "+", sd(validationValues[folds[[i]]]), " => ranked=", mean(extra_scale$CV[folds[[i]]]), "+", sd(extra_scale$CV[folds[[i]]]), "\n", sep = "")
    }
    
    # Get AUC metric information
    temp_auc <- numeric(length(folds))
    best_auc <- 0
    for (j in 1:length(folds)) {
      temp_auc[j] <- FastROC(y = label[folds[[j]]], x = extra_scale$CV[folds[[j]]])
      best_auc <- best_auc + (temp_auc[j] / length(folds))
      cat("Fold ", j, ": AUC=", sprintf("%.07f", temp_auc[j]), "\n", sep = "")
    }
    cat("AUC: ", sprintf("%.07f", mean(temp_auc)), " + ", sprintf("%.07f", sd(temp_auc)), "\n", sep = "")
    cat("Average AUC using all data: ", sprintf("%.07f", FastROC(y = label, x = extra_scale$CV)), "\n\n\n", sep = "")
    
    
    # Get MCC metric information
    temp_mcc <- numeric(length(folds))
    temp_thresh <- numeric(length(folds))
    temp_positives <- numeric(length(folds))
    temp_detection <- numeric(length(folds))
    temp_true <- numeric(length(folds))
    temp_undetect <- numeric(length(folds))
    best_mcc <- 0
    for (j in 1:length(folds)) {
      
      temp_mcc[j] <- mcc_eval_print(y_prob = extra_scale$CV[folds[[j]]], y_true = label[folds[[j]]])
      temp_thresh[j] <- mcc_eval_pred(y_prob = extra_scale$CV[folds[[j]]], y_true = label[folds[[j]]])
      mini_preds <- extra_scale$CV[folds[[j]]] > temp_thresh[[j]]
      temp_positives[j] <- sum(mini_preds)
      temp_detection[j] <- 100 * temp_positives[j] / sum(label[folds[[j]]])
      temp_true[j] <- sum((mini_preds[mini_preds == TRUE] == label[folds[[j]]][mini_preds == TRUE]))
      temp_undetect[j] <- sum(label[folds[[j]]]) - temp_true[j]
      temp_true[j] <- 100 * temp_true[j] / sum(length(mini_preds[mini_preds == TRUE]))
      best_mcc <- best_mcc + (temp_mcc[j] / length(folds))
      cat("Fold ", j, ": MCC=", sprintf("%.07f", temp_mcc[j]), " (", sprintf("%04d", temp_positives[j]), " [", sprintf("%05.2f", temp_detection[j]), "%] positives), threshold=", sprintf("%.07f", temp_thresh[j]), " => True positives = ", sprintf("%06.3f", temp_true[j]), "%\n", sep = "")
      
    }
    cat("MCC: ", sprintf("%.07f", mean(temp_mcc)), " + ", sprintf("%.07f", sd(temp_mcc)), "\n", sep = "")
    cat("Threshold: ", sprintf("%.07f", mean(temp_thresh)), " + ", sprintf("%.07f", sd(temp_thresh)), "\n", sep = "")
    cat("Positives: ", sprintf("%06.2f", mean(temp_positives)), " + ", sprintf("%06.2f", sd(temp_positives)), "\n", sep = "")
    cat("Detection Rate %: ", sprintf("%06.3f", mean(temp_detection)), " + ", sprintf("%06.3f", sd(temp_detection)), "\n", sep = "")
    cat("True positives %: ", sprintf("%06.3f", mean(temp_true)), " + ", sprintf("%06.3f", sd(temp_true)), "\n", sep = "")
    cat("Undetected positives: ", sprintf("%07.2f", mean(temp_undetect)), " + ", sprintf("%07.2f", sd(temp_undetect)), "\n", sep = "")
    cat("Average MCC on all data (5 fold): ", sprintf("%.07f", mcc_fixed(y_prob = extra_scale$CV, y_true = label, prob = mean(temp_thresh))), ", threshold=", sprintf("%.07f", mean(temp_thresh)), "\n", sep = "")
    cat("Average MCC using all data: ", sprintf("%.07f", mcc_eval_print(y_prob = extra_scale$CV, y_true = label)), ", threshold=", sprintf("%.07f", mcc_eval_pred(y_prob = extra_scale$CV, y_true = label)), "\n\n\n", sep = "")
    
    
    # Create overfitted submission from all data
    best_mcc1 <- mcc_eval_pred(y_prob = extra_scale$CV, y_true = label)
    submission0_ov <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0_ov$Response <- as.numeric(extra_scale$Test > best_mcc1)
    best_count1 <- sum(submission0_ov$Response == 1)
    cat("Scaled Submission overfitted threshold on all MCC positives: ", best_count1, "\n\n", sep = "")
    write.csv(submission0_ov, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_scale_", sprintf("%.06f", best_mcc1), "_", best_count1, ".csv", sep = "")), row.names = FALSE)
    
    # Create CV submission from validation
    best_mcc2 <- mean(temp_thresh)
    submission0 <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0$Response <- as.numeric(extra_scale$Test > best_mcc2)
    best_count2 <- sum(submission0$Response == 1)
    cat("Scaled Submission average validated threshold on all MCC positives: ", best_count2, "\n\n", sep = "")
    write.csv(submission0, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_scale_", sprintf("%.06f", best_mcc2), "_", best_count2, ".csv", sep = "")), row.names = FALSE)
    
    # Create average of the two previous submissions
    best_mcc3 <- (best_mcc1 + best_mcc2) / 2
    submission0_ex <- fread("datasets/sample_submission.csv", header = TRUE, sep = ",", stringsAsFactors = FALSE)
    submission0_ex$Response <- as.numeric(extra_scale$Test > best_mcc3)
    best_count3 <- sum(submission0_ex$Response == 1)
    cat("Scaled Submission average of overfit+validated threshold positives: ", best_count3, "\n\n", sep = "")
    write.csv(submission0_ex, file = file.path(my_script_is_using, paste(my_script_subbed, "_val_scale_", sprintf("%.06f", best_mcc3), "_", best_count3, ".csv", sep = "")), row.names = FALSE)
    
  }
  
  cat("```")
  sink()
  
}


# AnalysisFunc(label = label,
#              folds = folds,
#              validationValues = validationValues,
#              predictedValuesCV = predictedValuesCV,
#              predictedValues = predictedValues)


AnalysisFunc(label = label,
             folds = folds,
             validationValues = validationValues,
             predictedValuesCV = predictedValuesCV,
             predictedValuesCVList = predictedValuesCVList)
