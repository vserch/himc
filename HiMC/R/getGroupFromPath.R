#' getFinalPathList internal function
#'
#' Takes in a list of paths and returns the final classification of that path
#' @param string The path in question
#' @keywords path list haplogroup classification
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' group <- getGroupFromPath("A -> B -> C")

getGroupFromPath <- function(string) {
  splitstring <- strsplit(string,"->")[[1]]
  str_trim(splitstring[length(splitstring)])
}
