# Wastewater Data Analysis Project

## Overview
This repository contains all files necessary for analyzing wastewater data and generating a final report on the correlation between population size served and the average SARS-CoV-2 detection proportion.

## Repository Contents
- **`Code/`**
  - `01_make_plot.R`: Script for creating the scatterplot figure.
  - `02_render_report.R`: Script for rendering the `Report.Rmd` file into the final report.
- **`Output/`**
  - `plot.png`: Generated scatterplot figure.
- **`Raw_Data/`**
  - `wastewater_2024-10-28_subset.csv`: Raw data file used in the analysis.
- **`Report.Rmd`**: R Markdown file used to generate the final report.
- **`Report.html`**: Generated report in HTML format.
- **`Makefile`**: Automates the workflow to generate the plot and render the report.
- **`README.md`**: Project documentation.

## Generating the Final Report
To generate the final report, you can either use the `Makefile` or manually run the scripts:

### Using the `Makefile`
1. Ensure you have R and the required R packages installed (`dplyr`, `ggplot2`, `here`, `rmarkdown`).
2. Open a terminal in the project directory.
3. Run the following command:


### Manual Steps
1. Run `Code/01_make_plot.R` to generate the plot (`plot.png`).
2. Run `Code/02_render_report.R` to render the `Report.Rmd` file into `Report.html`.

## Report Contents
The `Report.html` file provides:
- An overview of the data and analysis.
- A processed table of average detection proportions by population size served.
- A scatterplot figure showing the correlation between population size and average SARS-CoV-2 detection proportion.

## Code for Table Creation
The code for creating the required table (average detection proportions) is included within the data processing section of `Report.Rmd`.

## Code for Figure Creation
The code for creating the required scatterplot figure is found in `Code/01_make_plot.R`.
