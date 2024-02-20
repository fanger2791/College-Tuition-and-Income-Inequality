# College-Tuition-and-Income-Inequality

## Overview

The repo includes all files needed to reproduce the paper "Income Disparity and Its Influence on Higher Education Affordability and Access". This paper is a reproduction of "College Tuition and Income Inequality" by Zhifeng Cai and Jonathan Heathcote which demonstrates the connection between rising income inequality and the surge in college tuition costs in the United States.

## File Structure

The repo is structured as:

-   `input/data` contains the data sources used in analysis including the raw data.
-   `outputs/data` contains the cleaned dataset that was constructed.
-   `outputs/paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.

## How to Run and Reproduce



1. Run `scripts/download_data.R` to download the raw data. It will state that to download the Raw Data for replication in excel format can be found at this URL:

LINK: https://www.openicpsr.org/openicpsr/project/151521/version/V1/view

2. Run `scripts/simulate_data.R` to simulate what the data could look like
3. Run `scripts/test_data.R` to test the data
4. Run `scripts/data_cleaning.R` to generate the clean data
5. Run `outputs/paper/paper.qmd` and render the quarto file to see the pdf

## Statement on LLM usage

LLMS were not used in the writing, research, or computational aspects of this paper.