library(artyfarty)

context("themes return correctly")

test_that("themes return a theme object", {

  theme_funcs<-Filter(function(o) grepl("theme_", o), ls("package:artyfarty"))

  for(th in theme_funcs){

    expect_s3_class(get(th)(), "theme")
  }

})
