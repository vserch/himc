#' NumChildren
#'
#' Internal function. Takes in a node object and returns the total number of that node's children
#' @param node_object The FASTMAP node in question
#' @keywords snp node children
#' @export

numChildren <- function(node_object) {
  if (class(node_object) != "node") {
    stop("numChildren only applies to nodes")
  }
  length(node_object@children)
}
