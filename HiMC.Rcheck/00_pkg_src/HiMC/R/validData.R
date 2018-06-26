#' validData boolean check
#'
#' Internal function. Takes in a dataframe and a node and returns true if the dataframe row has the required SNPs for the node
#' @param df The FASTMAP dataframe row
#' @param node The node in question
#' @keywords snp node df data valid
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' df_row_meets_criteria_for_node_requirements <- validData(data.frame(),HiMC::root)

validData <- function(df,node) {
  if (class(node) != "node" || class(df) != "data.frame") {
    stop("validPath requries a dataframe and a node to check")
  }
  if (numReqs(node) == 0) {
    TRUE
  }
  else {
    all(sapply(node@req,function(snp) {
      pos <- gsub("[^0-9]","",snp)[1]
      allele <- gsub("[0-9]","",snp)[1]
      if (pos %in% names(df)) {
        substr(df[,pos],1,1) == allele
      }
      else {
        FALSE
      }
    }))
  }
}
