#' validData boolean check
#'
#' Internal function. Takes in a dataframe and a node and returns true if the dataframe row is missing any SNPs for the node in question
#' @param df The FASTMAP dataframe row
#' @param node The node in question
#' @keywords snp node df missing
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' is_dataframe_row_missing_snps_from_node <- missingSnps(data.frame(),HiMC::root)

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
      if (pos %in% names(df)) {
        substr(df[,pos],1,1) == "0"
      }
      else {
        TRUE
      }
    })) 
  }
}
