#' Limit String Vec
#' 
#' Writes the first 6 elements and the number of other elements in a string.
#' 
#' @param str_vec A string vector to be transformed.
#' 
#' @noRd
limit_string_vec <- function(str_vec){
    paste(paste(utils::head(str_vec),collapse = ", "), "and",
    length(str_vec) - length(utils::head(str_vec)), "more.")
}
