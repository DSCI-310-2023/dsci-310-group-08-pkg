# Define the test cases
test_that("read_dataset reads a CSV file", {
  # Set up the test
  path <- "https://github.com/rehan13/ownprac/blob/main/testsheet.csv"
  out_dir <- tempfile()

  # Call the function
  dataset <- read_dataset(path, out_dir)

  # Assert that the result is a data frame
  expect_is(dataset, "data.frame")

  # Assert that the data frame has the expected number of rows and columns
  expect_equal(nrow(dataset), 606)
  expect_equal(ncol(dataset), 1)

  # Clean up
  unlink(out_dir)
})
