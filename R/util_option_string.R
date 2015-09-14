#' @rdname option_string
#' @name option_string
#' @title Convert Options
#' @description
#' This function is used to convert a list of options into an options string. If a string is given,  it will be taken as such.
#'
#' @param options list of options, or a string (which will be returned unmodified)
#
option_string <- function(options){
  if (is.character(options)) {
    string <- option
  } else if (is.list(options)) {
    string <-
      paste(sapply(names(options),
                   function(option) {
                     if (is.logical(options[[option]])) {
                       if (options[[option]] == TRUE)
                         paste0("--enable-", option)
                       else
                         paste0("--disable-", option)
                     } else {
                       paste0("--", option, " ",
                              format(options[[option]], scientifi = FALSE))
                     }
                   }
                   ), collapse = " ")
  } else {
    string <- ""
  }
    
  return(string)
}