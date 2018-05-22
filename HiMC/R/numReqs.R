#' NumReqs
#'
#' Internal function. Takes in a node object and returns the number of SNPs that it requires for validation
#' @param node_object The FASTMAP node in question
#' @keywords snp node
#' @export

numReqs <- function(node_object) {
  if (class(node_object) != "node") {
    stop("numReqs only applies to nodes")
  }
  length(node_object@req)
}
