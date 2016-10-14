#' Rich data input
#' 
#' Caputre the semantic meaing. For instance, separately recognizing the 'phenotypic' data
#' 
#' @param pdata_file phenotype file
#' 
#' @param exprs_file gene exprssion data file
#' 
#' @return A SummarizedExperiment() containing samples as colData(), and expression values
#'    as assay().
#' 
#' @importFrom SummarizedExperiment SummarizedExperiment
#' @export
#' @examples 
#'    #se <- input_rich(pdata_file, exprs_file)
#'    #se[,se$mol.biol %in% c("BCR/ABL", "NEG")]
#'    #assays(se)[[1]] %>% rowMeans() %>% density() %>% plot()
input_rich <- function(pdata_file, exprs_file) {
  pdata <- read.csv(pdata_file, row.names=1, check.names = FALSE)
  exprs <- read.csv(exprs_file, row.names=1, check.names = FALSE)
  
  SummarizedExperiment(as.matrix(exprs), colData=pdata)
}

