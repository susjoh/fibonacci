#' A function to plot a Fibonacci sequences.
#'
#' This function creates a plot for a Fibonacci sequence of a specified length.
#'
#' @param len numeric. Specify the length of the sequence.
#' @param gradient logical. Default TRUE. Indicates whether points on the plot
#'   should be coloured by gradient.
#' @import ggplot2
#' @export


plot_fibonacci <- function(len, gradient = T){

  require(ggplot2)

  x <- data.frame(Order = 1:len,
                  Fibonacci.Number = fibonacci(len))

  if(gradient){
    p <- ggplot(x, aes(Order, Fibonacci.Number, colour = Order))
  } else {
    p <- ggplot(x, aes(Order, Fibonacci.Number))
  }

  p +
    geom_point(size = 2) +
    geom_line() +
    theme_bw() +
    theme(legend.position = "none")

}

