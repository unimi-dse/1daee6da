
#---------# Functions  #----------#

# Dependencies are listed in the DESCRIPTION-file and should be imported automatically when installing the package.



# Imports the data to be analyzed into a Dataframe (DF)
#' @title Import Data
#'
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.
#' @usage To use this function by itself, store the DF in a variable by the following command: > df = import_data()
#' @importFrom readr
import_data <- function() {
  df <- read_csv(system.file("extdata", "train.csv", package="titanicanalysis"))
  return(df)
}


# Calculate and print mean age of all pasengers categorized on gender
#' @title Passenger Age Mean
#'
#' @description This function returns the mean age of the passengers.
#' @usage To use this function by itself, you need to input the Titanic DF. The DF can be stored as a variable by using the function import_data(). You can then call the use the function with the command: > age_mean(df)
age_mean <- function(df){
  sprintf("The mean age of all the passengers was: %f", mean(df[['Age']][complete.cases(df[['Age']])]))
}

# Calculate mean age of survivors categorized on gender
#' @title Survivor Age Mean
#'
#' @description This function returns the mean age of the survivors.
#' @usage To use this function by itself, you need to input the Titanic DF. The DF can be stored as a variable by using the function import_data(). You can then call the use the function with the command: > survivor_age_mean(df)
survivor_age_mean <- function(df){
  i <- df[['Survived']] == 1
  sprintf("The mean age of the survivors was %f:", mean(df[['Age']][i][complete.cases(df[['Age']][i])]))
}

# Scatter plot of passengers based on age (x-axis) and gender (color)
#' @title Plot Passengers
#'
#' @description This function plots a scatter plot of the passengers, with the binary feature "Survived" on the y axis, and integer feature "Age" on the x-axis. The gender of each passenger is represented as colors. It is not included in the main-func.
#' @usage To use this function by itself, you need to input the Titanic DF as an argument for the function. The DF can be stored as a variable by using the function import_data(). You can then call the use the function with the command: > survivor_age_mean(df)
#' @importFrom plotly
plot_passengers <- function(df){
  p <- plot_ly(data=df, x=~Age, y=~Survived, color=~Sex, colors="Set1", type="scatter")
  p
}

# Main function
#' @title Main function
#'
#' @description This function runs the various functions of the package in the correct order.
#' @usage Run the function by calling it without arguments: > main_func()
#' @importFrom DataExplorer
main_func <- function(){
  df = import_data()
  create_report(df)
  age_mean(df)
  survivor_age_mean(df)


}






