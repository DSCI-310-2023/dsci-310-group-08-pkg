#' Read Dataset Function
#'
#' This function reads the dataset when a path is entered for the dataset and saves it at the destination entered
#'
#' @param path The path where the dataset is which needs to be stored in the given path
#'
#' @param out_dir The destination where the entered path for the dataset needs to be saved
#'
#' @return Returns the dataset as a datframe
#' @export
#'

read_dataset <- function(path, out_dir){
  utils::download.file(path, destfile = out_dir)
  dataset <- utils::read.csv(out_dir)
  return(dataset)
}
