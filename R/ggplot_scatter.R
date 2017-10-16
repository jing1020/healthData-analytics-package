#' sctter plot on two variables
#'
#' @description sctter plot between fitness time and protein intake and fitness time and rice and grain intake
#' @return graph
#' @export
#' @import ggplot2
#'         gridExtra
#'
ggplot_scatter=function(){
plot1=ggplot(data=mydata,aes(x=`Fitness (in mins)`,y=`Protein in total (in g)`))+
  geom_point(aes(x=`Fitness (in mins)`,y=`Protein in total (in g)`),color="red")+
  labs(title="fitness time and protein intake", x="fitness (in mins)",y="protein intake (in g)")
plot2=ggplot(data=mydata,aes(x=`Fitness (in mins)`,y=`Protein in total (in g)`))+
  geom_point(aes(x=`Fitness (in mins)`,y=`Rice and Grain (in g)`),color="green")+
  labs(title="fitness time and rice and grain intak", x="fitness (in mins)",y="rice and grain intake (in g)")
grid.arrange(plot1, plot2, nrow=1, ncol=2)
}
