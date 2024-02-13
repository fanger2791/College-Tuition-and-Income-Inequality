#### Preamble ####
# Purpose: Simulates data concerning College Tuiton and Fees in the US
# Author: Michael Fang, Harrison Huang
# Email: m.fang@mail.utoronto.ca
# Date: 13 February 2024


#### Workspace setup ####
library(tidyverse)
library(ggplot2)
library(dplyr)

#### Simulate data ####

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




