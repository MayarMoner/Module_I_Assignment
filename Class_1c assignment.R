getwd()
cholesterol <- 230
if(cholesterol>240){print("high cholesterol")} else{"low cholesterol"}
Systolic_bp <- 130
if(Systolic_bp<120) {print("Blood Pressure is normal")} else{"Blood Pressure is high"}

read.csv(file.choose())
read.csv(file.choose())
data_patient= read.csv(file.choose())
data_meta= read.csv(file.choose())
str(data_patient)
View(data_patient)
#### Taskp3 #### creat a copy.
clean_data_patient = data_patient
clean_data_patient
clean_data_meta = data_meta
clean_data_meta
# identify columns
str(clean_data_meta)
str(clean_data_patient)
clean_data_patient$patient_id= NULL
View(clean_data_patient)
str(clean_data_patient)
#clean_data_patient columns need to converted to factors are (gender, diagnosis, smoker)
factor_cols_patient= c("gender, diagnosis, smoker")
for (col in factor_cols_patient) {
  clean_data_patient[[col]]= as.factor(clean_data_patient[[col]])
  
  for (col in factor_cols_patient) {
    clean_data_patient[[col]] <- as.factor(clean_data_patient[[col]])
  }
  factor_cols_patient= c("gender", "diagnosis", "smoker")
  for (col in factor_cols_patient) { 
   factor_cols_patient[[col]] = as.factor(factor_cols_patient[[col]])
  }
  for (col in factor_cols_patient) {
  clean_data_patient[[col]] = as.factor(clean_data_patient[[col]]) 
  }
  # columns to convert
  factor_cols_patient <- c("gender", "diagnosis", "smoker")
  
  # loop through each column
  for (col in factor_cols_patient) {
    clean_data_patient[[col]] <- as.factor(clean_data_patient[[col]])
  }
  str(clean_data_patient)
  str(clean_data_meta)
  # columns to convert are height, gender.
  factor_cols_meta = c("height", "gender")
for (col in factor_cols_meta) {
  clean_data_meta[[col]] <- as.factor(clean_data_meta[[col]])
}  
  for (col in factor_cols_meta) {
    clean_data_meta[[col]] <- as.factor(clean_data_meta[[col]])
  }
 
   factor_cols_meta <- c("height", "gender")
  
  for (col in factor_cols_meta) {
    clean_data_meta[[col]] <- as.factor(clean_data_meta[[col]])
  }
  str(clean_data_meta)
  # p4 of task
   clean_data_patient$smoker_binary= ifelse(clean_data_patient$smoker == "YES",0,1)
   str(clean_data_patient)
   clean_data_patient$gender= ifelse(clean_data_patient$gender== "YES",0,1)
   View(clean_data_patient)
   # to do it in loop
   # Task 4: Convert smoking to binary
   binary_cols <- c("smoker")
   
   for (col in binary_cols) {
     clean_data_patient[[col]] <- ifelse(clean_data_patient[[col]] == "Yes", 1, 0)
   }
   binary_cols_2 <- c("gender")
   
   for (col in binary_cols_2) {
     clean_data_patient[[col]] <- ifelse(clean_data_patient[[col]] == "YES", 0, 1) 
   }
   View(clean_data_patient)
   str(data_patient)
   str(clean_data_patient)
   str(data_meta)
   str(clean_data_meta)
   