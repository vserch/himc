#' NumSnps
#'
#' Internal function. Takes in a node object and returns the number of SNPs that belong to it
#' @param node_object The FASTMAP node in question
#' @keywords snp node
#' @export

numSnps <- function(node_object) {
  if (class(node_object) != "node") {
    stop("numSnps only applies to nodes")
  }
  length(node_object@snps)
}
