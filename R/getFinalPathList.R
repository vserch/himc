#' getFinalPathList internal function
#'
#' Takes in a nested list of prettified paths and returns those of the greatest length
#' @param df The FASTMAP dataframe row
#' @keywords path list
#' @export

getFinalPathList <- function(plist) {
  to_counts <- sapply(plist,function(x){str_count(x," -> ")})
  biggest <- max(to_counts)
  correct <- plist[str_count(plist," -> ") >= biggest]
	if(length(correct) > 1) {
		correct <- correct[correct != "unclassified"]
	} else {
		correct <- correct
	}
	correct[[1]]
}
