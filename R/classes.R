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
  all <- merge(pdata, t(exprs), by=0)
  return(all)
  ## sol1 <- apply(all[, -c(1:22)], 2, mean)
  ## sol2 <- colMeans(all[, -c(1:22)])
  
  ## return a datafram
}


# library(magrittr)
# all[, -(1:22)] %>% colMeans() %>% 
#   density() %>% 
#   plot()

