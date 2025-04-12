install.packages("testthat")
library(testthat)
test_that("get_exported_functions returns a response", {
  res <- get_exported_functions("ggplot2")
  expect_true(is.character(res) || is.list(res))
})

