## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(Movie)

## -----------------------------------------------------------------------------
path <- "https://github.com/rehan13/ownprac/blob/main/testsheet.csv"
out_dir <- tempfile()
dataset <- read_dataset(path, out_dir)


