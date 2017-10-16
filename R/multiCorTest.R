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
  var.col <- which(colnames(r)==depenVaColname)
  r.df = data.frame(r[,var.col])
  colnames(r.df) = 'correlation'
  return(r.df)
}


