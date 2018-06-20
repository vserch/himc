#' getFinalPathList internal function
#'
#' Takes in a nested list of prettified paths and returns those of the greatest length
#' @param plist A nested list of prettified paths
#' @keywords path list
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' filtered_paths <- getFinalPathList(c("A -> B","A -> B -> C"))

getFinalPathList <- function(plist) {
  to_counts <- sapply(plist,function(x){str_count(x," -> ")})
  biggest <- max(to_counts)
  correct <- plist[str_count(plist," -> ") >= biggest]
	if(length(correct) > 1) {
		correct <- correct[correct != "unclassified"]
	} else {
		correct <- correct
	}
	unlist(correct)[1]
}
