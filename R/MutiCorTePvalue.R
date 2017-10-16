
#' pvalues for muti correlation tests
#'
#' @return lists
#' @export
#'

MutiCorTestPvalue=function(){
  CorTestPvalue(mydata,"Weight (in kg)","Olive oil (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Red Meat (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Other Proteins (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Protein in total (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Vegetables (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Rice and Grain (in g)")
  CorTestPvalue(mydata,"Weight (in kg)","Water (in cup)")
  CorTestPvalue(mydata,"Weight (in kg)","Snacks (in calories)")
  CorTestPvalue(mydata,"Weight (in kg)","Fitness (in mins)")
  CorTestPvalue(mydata,"Weight (in kg)","Entertament (in hrs)")
  CorTestPvalue(mydata,"Weight (in kg)","Study Hours (in hrs)")
  CorTestPvalue(mydata,"Weight (in kg)","Sleep Hours (in hrs)")
}
