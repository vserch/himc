#' NumChildren
#'
#' Internal function. Takes in a node object and returns the total number of that node's children
#' @param node_object The FASTMAP node in question
#' @keywords snp node children
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' node_tail_length = numChildren(HiMC::root)

numChildren <- function(node_object) {
  if (class(node_object) != "node") {
    stop("numChildren only applies to nodes")
  }
  length(node_object@children)
}
