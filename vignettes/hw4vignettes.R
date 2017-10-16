## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----load9, echo=FALSE,messag=FALSE--------------------------------------
library(tidyverse)
library(ggplot2)
library(googlesheets)
dplyr::filter


## ----load1, echo=FALSE,message=FALSE-------------------------------------
library("googlesheets")
googlekey=gs_url("https://docs.google.com/spreadsheets/d/1S1TSS8Wwx8fU1C0-S30zGzZXj_R8zSM-BQSzFNZzGic/edit#gid=0", lookup=FALSE, visibility="public")
mydata=gs_read(googlekey)

## ----load2, echo=TRUE----------------------------------------------------
knitr::kable(head(mydata), format = "markdown", align = 'c', caption = "Personal Health Data Sheet")

## ----load3, echo=TRUE----------------------------------------------------
round(apply(mydata[ ,2:14],2,mean),1)

## ----load4, echo=TRUE----------------------------------------------------
par(mfrow=c(2,3))
boxplot(mydata[1:15, ][3], main="boxplot for  olive oil (in kg)", ylab="olive oil in kg",xlab="09/13/2017-09/27/2017")
boxplot(mydata[1:15, ][6], main="boxplot for  protein in total (in kg)", ylab="total protein in kg",xlab="09/13/2017-09/27/2017")
boxplot(mydata[1:15, ][7], main="boxplot for  vegetables (in kg)", ylab="vegetables in kg",xlab="09/13/2017-09/27/2017")
boxplot(mydata[1:15, ][8], main="boxplot for  rice and grain (in kg)", ylab="rice and grain in kg",xlab="09/13/2017-09/27/2017")
boxplot(mydata[1:15, ][9], main="boxplot for  water (in cup)", ylab="water in cups",xlab="09/13/2017-09/27/2017")
boxplot(mydata[1:15, ][10], main="boxplot for  snacks (in calories)", ylab="snacks in calories",xlab="09/13/2017-09/27/2017")

## ----load7, echo=TRUE----------------------------------------------------
library(mynewpackage)
multiCorTest(mydata,"Weight (in kg)")

## ----load5, echo=TRUE----------------------------------------------------
ggplot_scatter()

## ----load8, echo=TRUE----------------------------------------------------
MutiCorTestPvalue()

## ----load6, echo=TRUE----------------------------------------------------
fit = lm(`Weight (in kg)`~ `Protein in total (in g)`+`Vegetables (in g)`+`Water (in cup)`+`Snacks (in calories)`, data=mydata)
summary(fit)

## ----load10, echo=TRUE---------------------------------------------------
library(ggcorrplot)
nums = sapply(mydata, is.numeric)
corr = cor(mydata[,nums])
ggcorrplot(corr, method="circle",hc.order = TRUE, type = "lower",
     outline.col = "white", ggtheme = ggplot2::theme_gray,
   colors = c("#6D9EC1", "white", "#E46726"),lab_size =1.9,lab=TRUE,legend.title = "correlation",tl.cex=7)

## ----load12, echo=TRUE---------------------------------------------------
summary(lm(mydata$`Vegetables (in g)` ~ mydata$`Protein in total (in g)`, data = mydata))

## ----load11, echo=TRUE---------------------------------------------------
plot(mydata$`Vegetables (in g)`,mydata$`Protein in total (in g)`,main="simple linear regression between protein and veg", xlab="vegetable intake (g)", ylab="protein intake(g)")
abline(lm(mydata$`Vegetables (in g)` ~ mydata$`Protein in total (in g)`, data = mydata))
text(x=330,y=460,"y=605.54-0.52x")

## ----load14, echo=TRUE---------------------------------------------------
fit2 = lm(`Weight (in kg)`~ `Protein in total (in g)`+`Water (in cup)`+`Snacks (in calories)`, data=mydata)
summary(fit2)

