#'mutiple correlation test
#'
#'This function is used when we are interested in one column in the dataset and want to test its correlations with variables in other columns.
#'
#'@param depenVaColname The varibale that we are interested in
#'@param data Your dataset
#'
#'
#'@export
#'@examples
#'multiCorTest(mydata,"Weight (in kg)")


multiCorTest=function(data, depenVaColname){
  depenVaColname = as.character(depenVaColname)
  nums = sapply(data, is.numeric)
  r = cor(data[,nums])
  var.col = which(colnames(r)==depenVaColname)
  r.df = data.frame(round(r[,var.col],2))
  colnames(r.df) = 'correlation'
  r.df_= knitr::kable(r.df, format = "markdown",  align = 'c', caption = "average life habit")
  return(r.df_)
}


