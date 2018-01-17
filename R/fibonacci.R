#' A function to generate a Fibonacci sequences.
#'
#' This function generates a Fibonacci sequence of a specified length.
#'
#' @param len numeric. Specify the length of the sequence.
#' @export

fibonacci <- function(len){

  fibvec <- numeric(len)

  fibvec[1] <- 1
  fibvec[2] <- 1
  for (i in 3:len) {
    fibvec[i] <- fibvec[i-1]+fibvec[i-2]
  }

  fibvec
}


