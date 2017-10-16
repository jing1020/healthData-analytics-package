#' p-value of correlation test
#'
#' @description This function is designed to get p-value by doing cor.test to a variable with the varibale that we are interested in.
#'
#' @param data Your dataset
#' @param depenVaColname The varibale that we are interested in
#' @param indepenVaColname The varibale that we want to know the correlation p-vlaue with the variable that we are interested in.
#'
#' @return a list
#' @export
#'
#' @examples
#' CorTestPvalue(exampledata,"Weight (in kg)","Olive oil (in g)")
#'
#'
CorTestPvalue=function(data,depenVaColname,indepenVaColname){
  depenVaColname = as.character(depenVaColname)
  indepenVaColname = as.character(indepenVaColname)
  data=as.matrix(data)
  var1=as.numeric(data[ ,which(colnames(data)==depenVaColname)])
  var2=as.numeric(data[ ,which(colnames(data)==indepenVaColname)])
  corTest=cor.test(var1,var2)
  cat("p-vlaue for correlation test between",depenVaColname,"and",indepenVaColname,"is","\n")
  print(corTest[3])
}
