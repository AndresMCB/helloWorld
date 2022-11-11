#' function to display a message
#'
#' @param x a parameter to test whether the function receives a value
#' @examples
#' myFunction1("test parameter")
#'


myFunction1 <- function(x=NULL){
  message("Test function to shown how to create scripts inside a package")
  if(!is.null(x)){
    message("you have also passed the following parameter")
    print (x)
    }
  }
