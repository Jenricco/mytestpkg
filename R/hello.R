
# 1. create analysis dir
# 2. create RMD in that dir
# 3. use bookdown to get cap/cross refs
# 4. write a fn in R/
# 4a. document your fn with oxygen
# 5. use the fn in your rmd



#' Challenge Function
#'
#' @param x a nummeric value
#'
#' @return
#' @export
#'
#' @examples
#' Chal_func(15)         ##dieser Teil wurde in den Markdown "Challenge" eingebunden
#'
#'
Chal_func <- function(x){

  k =  x/30

  return(k)

}


Chal_func(15)




#' Title
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
#' Chal_func2(5)
Chal_func2 <- function(x){

  k =  x/10

  return(k)

}


Chal_func2(5)



#' Adds er to a digit
#'
#' @param x
#'
#' @return
#' @export
#'
#' @examples
#' number_er(2)
number_er <- function(x){
  glue::glue(x, "-er")
}

number_er(2)




