#### Preamble ####
# Purpose: Cleans raw data
# Author: Michael Fang, Harrison Huang
# Email: m.fang@mail.utoronto.ca
# Date: 23 January 2023


#### Workspace setup ####
library(tidyverse)
library(ggplot2)
library(readxl)
library(dplyr)
library(tidyr)
library(readr)
library(janitor)

#### Clean data For Figure 1####

# Load the packages
library(readxl)
library(dplyr)
library(readr)

# Set the file path (Please update path to your own path where the data has been downloaded)
file_path <- "/Users/michaelfang/Downloads/Figure_1_data.xlsx"

# Read the data from the Excel file
data <- read_excel(file_path, sheet = "FIGURE 1 in PAPER", range = cell_cols("D:H"))

# Set column names manually
colnames(data) <- c('Academic Year', 'Public Sticker', 'Public Net', 'Private Sticker', 'Private Net')

# Check the structure of the data to make sure it's what we expect
#str(data)

# Convert data types if necessary - all price columns should be numeric
data <- mutate(data, 
               `Public Sticker` = as.numeric(`Public Sticker`),
               `Public Net` = as.numeric(`Public Net`),
               `Private Sticker` = as.numeric(`Private Sticker`),
               `Private Net` = as.numeric(`Private Net`))

# View the cleaned data
print(data)

#### Save data ####

# Write cleaned data 
write.csv(data, "/Users/michaelfang/College Tuiiton and Income Inequality/starter_folder-main 4/data/analysis_data/college_tuition_fees_analysis_data.csv")

#### Clean data For Figure 2####
