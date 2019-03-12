#' ---
#' title: "Class05"
#' author: "Ryan Park"
#' date: "January 24th, 2019"
#' output: github_document
#' ---
#class05 graphics intro

#my first boxplot
#` x is `2*4``
x <- rnorm(1000,0)
boxplot(x)

summary(x)
hist(x)
boxplot(x, horizontal = TRUE)

weight <- read.table("bimm143_05_rstats/bimm143_05_rstats/weight_chart.txt", header = TRUE,sep = "")
plot(weight$Age,weight$Weight, type = "o", pch = 15,cex=1.5,lwd=2,ylim=c(2,10),xlab = "Age (months)",ylab = "weight(kg)",main = "Some title")
feature <- read.table("bimm143_05_rstats/bimm143_05_rstats/feature_counts.txt", header = TRUE,sep = "\t")
par(mar = c(5.1,4.1,4.1,2.1))
barplot(feature$Count,horiz = TRUE,ylab = "A title", names.arg = feature$Feature,las = 1)
hist(c(rnorm(10000),rnorm(10000)+4), breaks = 100)

counts <- read.delim("bimm143_05_rstats/bimm143_05_rstats/male_female_counts.txt", row.names = NULL, sep = "")
barplot(counts$Count, col = rainbow(nrow(counts)))
genes <- read.delim("bimm143_05_rstats/bimm143_05_rstats/up_down_expression.txt")
table(genes$State)
plot(genes$Condition1,genes$Condition2, col = genes$State)

meth <- read.delim("bimm143_05_rstats/bimm143_05_rstats/expression_methylation.txt")
colorss <- densCols(meth$expression, meth$gene.meth, colramp = colorRampPalette(rainbow(10)))
plot(meth$expression, meth$gene.meth, pch  = 20, col = colorss)
