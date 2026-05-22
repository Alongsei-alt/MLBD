
setwd("~/Desktop/Machine Learning/MC project/Car_Loan _Project/01 Data Clean and Preparation")

# replace"20K - 20K €" with "20K - 40K €"
data <- read.csv("car_loan_data.csv", stringsAsFactors = FALSE)

table(data$salary_range)


data$salary_range <- gsub("20K - 20K €", "20K - 40K €", data$salary_range)

table(data$salary_range)

write.csv(data, "car_loan_data.csv", row.names = FALSE)

# 显示成功消息
cat("saved car_loan_data.csv\n")
