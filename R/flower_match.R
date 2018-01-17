#' A function to find flowers matching a Fibonacci sequence
#'
#' @param len numeric. Specify the length of the sequence.
#' @import dplyr
#' @export

flower_match <- function(len){

  require(dplyr)

  max.fib <- fibonacci(len)[len]
  filter(fibonacci_flowers, Petal.Count <= max.fib)

}
