#### Preamble ####
# Purpose: Simulates data concerning College Tuiton and Fees in the US and Density of Household Income
# Author: Michael Fang, Harrison Huang
# Email: m.fang@mail.utoronto.ca
# Date: 13 February 2024


#### Workspace setup ####
library(tidyverse)
library(ggplot2)
library(dplyr)

#### Simulate data for figure 1 ####

# Generate a sequence of years
years <- 2000:2020

# Create a data frame with simulated data
set.seed(123) # For reproducibility
data <- data.frame(
  Year = rep(years, times=4),
  Price = c(
    cumsum(runif(length(years), min=500, max=1500)), # Private Sticker
    cumsum(runif(length(years), min=100, max=300)),  # Public Sticker
    cumsum(runif(length(years), min=500, max=1500)) - runif(length(years), min=3000, max=5000), # Private Net
    cumsum(runif(length(years), min=100, max=300)) - runif(length(years), min=1000, max=2000)   # Public Net
  ),
  Type = factor(rep(c("Private Sticker", "Public Sticker", "Private Net", "Public Net"), each=length(years)))
)

# Plotting the data using ggplot2
p <- ggplot(data, aes(x=Year, y=Price, color=Type, group=Type)) +
  geom_line() +
  scale_color_manual(values=c("Private Sticker"="red", "Public Sticker"="green", 
                              "Private Net"="purple", "Public Net"="blue")) +
  theme_minimal() +
  labs(title="Simulated College Price Data Over Time", 
       x="Academic Year", 
       y="Price in $", 
       color="Price Type") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Print the plot
print(p)

#### Simulate data for figure 2 ####

# Load necessary libraries
library(ggplot2)

# Set seed for reproducibility
set.seed(123)

# Simulate log-normal distributions for household income
income_1989 <- rlnorm(1000, meanlog = 10, sdlog = 0.5)
income_2016 <- rlnorm(1000, meanlog = 10, sdlog = 1)

# Create a data frame for plotting
income_data <- data.frame(
  Log_Income = c(log(income_1989), log(income_2016)),
  Year = factor(rep(c("1989", "2016"), each = 1000))
)

# Create the density plot
ggplot(income_data, aes(x = Log_Income, fill = Year)) +
  geom_density(alpha = 0.5) +
  scale_fill_manual(values = c("1989" = "red", "2016" = "blue")) +
  labs(title = "Density of Log Household Income",
       x = "Log Household Income",
       y = "Density",
       fill = "Year") +
  theme_minimal()



