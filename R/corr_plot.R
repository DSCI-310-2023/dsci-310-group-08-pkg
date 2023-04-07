#' Correlation Plot Function
#'
#' This function gives a correlation plot by running ggpairs when a dataframe (data) is passed and a title for it
#'
#' @param data The dataframe that contains the dataset which needs to be plotted by ggpairs
#'
#' @param title The title that the correlation plot should contain passed as a string to the function
#'
#' @return Returns the generated plot
#' @export
#' @examples
#' data_test <- data.frame(
#' revenue = c(1,2,3),
#' budget = c(5,6,7)
#' )
#' correlation_plot = correlation_plot(data_test, "correlation")
#' correlation_plot
correlation_plot <- function(data, title){
  g <- data %>%
    GGally::ggpairs()+
    ggplot2::ggtitle(title)+
    ggplot2::theme(text = ggplot2::element_text(size = 7), plot.title = ggplot2::element_text(size = 20, hjust = 0.5))
  return(g)
}
