#' A function to plot a Fibonacci sequences.
#'
#' This function creates a plot for a Fibonacci sequence of a specified length.
#'
#' @param len numeric. Specify the length of the sequence.
#' @import ggplot2
#' @export


plot_fibonacci <- function(len){

  require(ggplot2)

  x <- data.frame(Order = 1:len,
                  Fibonacci.Number = fibonacci(len))

  ggplot(x, aes(Order, Fibonacci.Number, colour = Order)) +
    geom_point(size = 2) +
    geom_line() +
    theme_bw() +
    theme(legend.position = "none")

}

