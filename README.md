# Module_I_Assignment

This repository contains my solutions and practice files for Module 1 (Class 1b and 1c) of the AI_Omics Internship 2025.
The assignments focus on learning R programming basics, conditional statements, loops, data cleaning, and factor handling.
📝 Assignments
🔹 Class 1b

Created and set up first R project (module1).

Practiced saving scripts, setting working directory, and uploading to GitHub.

🔹 Class 1c

Task 1: Checked cholesterol level using if statement.

Task 2: Blood pressure check with if...else.

Task 3: Automated conversion of selected columns to factors using a for loop.

Task 4: Converted factor levels ("Yes"/"No") to numeric codes (1/0).

Verification: Compared original vs cleaned datasets with str().

Uploaded final scripts, cleaned data, and workspace to GitHub.
Module_I_Assignment/
│
├── class1b_assignment.R         # Script for Class 1b
├── class1c_assignment.R         # Script for Class 1c
├── class1c_assignment.RData     # Saved R workspace (optional)
│
├── raw_data/                    # Original input datasets
│   ├── patient_info.csv
│   └── metadata.csv
│
├── clean_data/                  # Cleaned datasets after processing
│   ├── clean_data_patient.csv
│   └── clean_data_meta.csv
│
└── README.md                    # Project description

Class_2_Assignment.R → R script containing the code used in this assignment.

MayarMoner_Class_2_Assignment.RData → Saved R workspace/results file.
This assignment processes differential expression results (CSV files) and:

Imports the data.

Replaces missing values in the padj column with 1.

Classifies each gene into categories (Upregulated, Downregulated, or Not_Significant) using the custom classify_gene() function.

Saves results for each input file in both the R environment and as CSV output files.
