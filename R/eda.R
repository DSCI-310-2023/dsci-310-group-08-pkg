#' Exploratory Data Analysis Function
#'
#' This function takes in a dataframe and only selects the columns passed in as selects and filter the columns entered to filtered.
#'
#' @param data The dataframe which stores the dataset from where the required columns are selected and filtered for EDA
#'
#' @param select_cols Enter the columns that need to be selected from the data eg:- c(c("col1", "col2"))
#'
#' @param ... It takes in all the columns that need to be filtered with its filtering technique as seperate arguments eg:- col1 > 1, col2 > 5
#'
#' @return Returns the dataframe after selecting the required columns and filtering them based on the criteria given
#' @export
#' @examples
#' test_df <- data.frame(col1 = c(1, 2, 3),
#' col2 = c(4, 5, 6),
#' col3 = c(7, 8, 9))
#' eda_df <- EDA(test_df, select_cols = c("col1", "col2"), col1 > 1, col2 > 5)
#' eda_df
EDA <- function(data, select_cols, ...) {

  data <- dplyr::select(data, tidyselect::all_of(select_cols))

  data <- dplyr::filter(data, ...)

  return(data)
}
