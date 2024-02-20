#### Preamble ####
# Purpose: Test Data concerning College Tuiton and Fees in the US
# Author: Michael Fang, Harrison Huang
# Email: m.fang@mail.utoronto.ca
# Date: 13 February 2024


#### Workspace setup ####
library(tidyverse)

#### Test data for simulation 1####

# Test 1 - Verify the number of records
sim_test_1 <- nrow(data) == length(years) * 4
print(paste("Test 1 - Number of records is correct:", sim_test_1))

# Test 2 - Check data types
sim_test_2 <- is.integer(data$Year) && is.numeric(data$Price) && is.factor(data$Type)
print(paste("Test 2 - Data types are correct:", sim_test_2))

# Test 3 - Year range is correct
sim_test_3 <- all(data$Year >= 2000 & data$Year <= 2020)
print(paste("Test 3 - Year range is correct:", sim_test_3))

# Test 4 - Correct factor levels
sim_test_4 <- all(levels(data$Type) == c("Private Net", "Private Sticker", "Public Net", "Public Sticker"))
print(paste("Test 4 - Factor levels are correct:", sim_test_4))

# Test 5 - Price values are logical
sim_test_5 <- all(data$Price > 0)
print(paste("Test 5 - Price values are logical:", sim_test_5))

# Assuming that p is the ggplot object from the plotting code
# Test 6 - Plot object is created
sim_test_6 <- inherits(p, "ggplot")
print(paste("Test 6 - Plot object is created:", sim_test_6))

#### Test Data for simulation 2####

# Test 1 - Verify the number of records
sim_test_1 <- nrow(income_data) == 2000
print(paste("Test 1 - Number of records is correct:", sim_test_1))

# Test 2 - Check for the presence of the 'Year' column with correct levels
sim_test_2 <- "Year" %in% names(income_data) && all(levels(income_data$Year) == c("1989", "2016"))
print(paste("Test 2 - 'Year' column has correct levels:", sim_test_2))

# Test 3 - Verify that income data is within expected range
sim_test_3 <- all(income_data$Log_Income > 0)
print(paste("Test 3 - Income data is within expected range:", sim_test_3))
