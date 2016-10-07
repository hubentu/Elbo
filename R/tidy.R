#' Represent data in a 'tidy' format
#' 
#' 'Tidy' data takes a 'long' view of data
#' 
#' @param pdata_file phenotype file
#' @param exprs_file gene exprssion data file
#' 
#' @details see more from 'dplyr'
#' 
#' @return A data.frame()
#' 
#' @importFrom reshape2 melt
#' @importFrom dplyr tbl_df
#' @importFrom magrittr %>%
#' @export

input_tidy <- function(pdata_file, exprs_file) {
  classic <- input_classic(pdata_file, exprs_file)
  require(reshape2)
  melt(classic, id.var=1:22, variable.name="probeset", 
               value.name = "exprs") %>% tbl_df
}

# tidy <- input_tidy(pdata_file, exprs_file)
# tidy %>% select(Row.names, probeset, exprs)
# probeset_mean <- tidy %>% group_by(probeset) %>% summarize(mean=mean(exprs))
# probeset_mean %>% .[["mean"]] %>% density() %>% plot()
# tidy %>% group_by(sex) %>% summarize(n())
