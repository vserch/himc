#' Path Generator
#'
#' Internal function. Takes a SNP dataframe, a node, and current path, and returns all available paths.
#' @param df SNP dataframe
#' @param node Node to be checked
#' @param path Current path checked
#' @keywords node path
#' @export
#' @examples
#' #internal function, not meant to be called externally
#' full_path_list <- getAllPaths(snp_data_frame,test_node,current_path)

getAllPaths <- function(df,node,path) {
  if (class(node) != "node" || class(df) != "data.frame") {
    stop("validPath requries a dataframe and a node to check")
  }
  newpath <- paste(path,node@name)
  if (validPath(df,node) && validData(df,node)) {
    child_paths <- lapply(node@children,function(child) {
      getAllPaths(df,child,newpath)
    })
    c(newpath,child_paths)
  }
  else if (validPath(df,node)) {
    child_paths <- lapply(node@children,function(child) {
      getAllPaths(df,child,newpath)
    })
    child_paths
  }
  else if (missingSnps(df,node)) {
    missing_note <- paste(paste("missing(",node@name,sep=""),")",sep="")
    missing_path <- paste(path,missing_note)
    child_paths <- lapply(node@children,function(child) {
      getAllPaths(df,child,missing_path)
    })
    child_paths  
  }
}
