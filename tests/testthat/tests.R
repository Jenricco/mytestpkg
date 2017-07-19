library("mytestpkg")

context("the basic text")

test_9 <- Chal_func(15)

test_that("my function works", {

  expect_equal( test_9, "my function works!")

})
