#' getFinalPathList internal function
#'
#' Takes in a nested list of prettified paths and returns those of the greatest length
#' @param df The FASTMAP dataframe row
#' @keywords path list
#' @export

getFinalPathList <- function(list) {
  to_counts <- sapply(list,function(x){str_count(x," -> ")})
  biggest <- max(to_counts)
  correct <- list[str_count(list," -> ") >= biggest]
}
