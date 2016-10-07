#' Expression class
#' 
#' blabla...
#' 
#' @param pdata_file phenotype file
#' 
#' @param exprs_file gene exprssion data file
#' 
#' @return A data.fram
#' 
#' @export

input_classic <- function(pdata_file, exprs_file) {
    
  pdata <- read.csv(pdata_file, row.names=1, check.names = FALSE)
  exprs <- read.csv(exprs_file, row.names=1, check.names = FALSE)
  merge(pdata, t(exprs), by=0)
  
  ## return a datafram
}