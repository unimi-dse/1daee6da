---
title: "README"
author: "Filip Vitez"
date: "1/23/2020"
output: html_document
---

```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

## Midterm Project in Coding for Data Science

This R package contains functions for importing, visualizing and analyzing a data-set called "Titanic: Machine Learning from Disaster" downloaded from Kaggle: https://www.kaggle.com/c/titanic/.

```
Install the package by running the command:
> devtools::install_github("unimi-dse/1daee6da")
```

```
Enable the functions of the package by running the command:
> require(titanicanalysis)
```

You can either choose to run the function named main_func which will run the various functions of the package in the right order, or to play around with the functions by yourself by calling them individually. Note that if you choose the latter, you first need to run the import_data function, as the rest of the functions depend on that.

```
Run the main function by typing:
> main_func()

One function: plot_passengers is omitted by the main function. Run the command ?plot_survivors for info on how to call it.
```

The function create_report() will create a statistical report of the data-set, as a HTML-file. This file will either open automatically in your browser, or you have to manually open it from the Files-window in R-studio. The function comes from a package called DataExplorer.

The function plot_passengers creates a scatter plot of the passengers, with the binary feature "Survived" on the y-axis, the numerical feature "Age" on the x-axis and "Gender" as a color. It becomes clear that women were more likely to have survived than men. One can also see that younger people were slightly more likely to survive.

The latter statement is also strenghtened by the functions age_mean and survivor_age_mean, which prints the mean age of all the passengers, and the survivors respectively.


### Used R-packages

* readr - package for importing csv-files as DataFrames.
* DataExplorer - package for data analysis and visualization
* Plotly - package for visualizing data
