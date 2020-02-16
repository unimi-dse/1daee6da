
#---------# Functions  #----------#

# Dependencies are listed in the DESCRIPTION-file and should be imported automatically when installing the package.


#' @title Import Data
#'
#' @description This function reads the data from a csv-file and returns it as a DataFrame-object.
#' @examples
#' df = import_data()
#' @import readr
#' @export
import_data <- function() {
  df <- read_csv(system.file("extdata", "train.csv", package="titanicanalysis"))
  return(df)
}


#' @title Passenger Age Mean
#'
#' @description This function returns the mean age of the passengers.
#' @param df The Titanic dataframe. Raw data as csv from Kaggle, converted to a R dataframe with the function read_csv.
#' @examples
#' age_mean()
#' @export
age_mean <- function(df=NULL){
  if(missing(df)){
    df = import_data()
  }
  return(mean(df[['Age']], na.rm = TRUE,verbose=TRUE))
}

#' @title Survivor Age Mean
#'
#' @description This function returns the mean age of the survivors.
#' @param df The Titanic dataframe. Raw data as csv from Kaggle, converted to a R dataframe with the function read_csv.
#' @examples
#' survivor_age_mean()
#' @export
survivor_age_mean <- function(df=NULL){
  if(missing(df)){
    df = import_data()
  }
  i <- df[['Survived']] == 1
  return(mean(df[['Age']][i], na.rm = TRUE, verbose=TRUE))
}

#' @title Plot Passengers
#'
#' @description This function plots a scatter plot of the passengers, with the binary feature "Survived" on the y axis, and integer feature "Age" on the x-axis. The gender of each passenger is represented as colors. It is not included in the main-func.
#' @param df The Titanic dataframe. Raw data as csv from Kaggle, converted to a R dataframe with the function read_csv.
#' @examples
#' plot_passengers()
#' @import plotly
#' @export
plot_passengers <- function(df=NULL){
  if(missing(df)){
    df = import_data()
  }
  p <- plot_ly(data=df, x=~Age, y=~Survived, color=~Sex, colors="Set1", type="scatter", mode="markers")
  p
}

#' @title Main function
#'
#' @description This function runs the various functions of the package in the correct order.
#' @examples
#' main_func()
#' @import DataExplorer
#' @export
main_func <- function(){
  df = import_data()
  create_report(df)
  age_mean(df)
  survivor_age_mean(df)


}






