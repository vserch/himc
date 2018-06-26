#' getPathList internal function
#'
#' Takes in a nested list of paths in dataframe format and returns a top-level path assignment
#' @param df The FASTMAP dataframe row
#' @keywords prettify path list
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' paths <- getPathList(data.frame())

getPathList <- function(df) {
  ugly_paths <- getAllPaths(df,root,"")
  formatted <- lapply(unlist(ugly_paths), function(x) { gsub(" unclassified ","",x)})
  formatted <- lapply(formatted, function(x) { gsub(" unclassified","unclassified",x) } )
  to_v <- lapply(formatted,function(x) { gsub(" "," -> ",x)})
  getFinalPathList(unlist(to_v))
}
