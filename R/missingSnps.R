#' validData boolean check
#'
#' Internal function. Takes in a dataframe and a node and returns true if the dataframe row is missing any SNPs for the node in question
#' @param df The FASTMAP dataframe row
#' @param node The node in question
#' @keywords snp node df missing
#' @export

missingSnps <- function(df,node) {
  if (class(node) != "node" || class(df) != "data.frame") {
    stop("validPath requries a dataframe and a node to check")
  }
  if (numSnps(node) == 0) {
    FALSE
  }
  else {
    any(sapply(node@snps,function(snp) {
      pos <- gsub("[^0-9]","",snp)[1]
      if (snp %in% names(df)) {
        substr(df[,pos],1,1) == "0"
      }
      else {
        FALSE
      }
    })) 
  }
}
