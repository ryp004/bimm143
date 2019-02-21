class14
================

``` r
A = read.csv("373531-SampleGenotypes-Homo_sapiens_Variation_Sample_rs8067378.csv")
table(A$Genotype..forward.strand.)
```

    ## 
    ## A|A A|G G|A G|G 
    ##  22  21  12   9

``` r
sum(A$Genotype..forward.strand.=="G|G")/nrow(A)
```

    ## [1] 0.140625

``` r
q <- "DDDDCDEDCDDDDBBDDDCC@"
library(seqinr)
library(gtools)
asc(s2c(q)) - 33
```

    ##  D  D  D  D  C  D  E  D  C  D  D  D  D  B  B  D  D  D  C  C  @ 
    ## 35 35 35 35 34 35 36 35 34 35 35 35 35 33 33 35 35 35 34 34 31

``` r
Z <- read.table("rs8067378_ENSG00000172057.6.txt")
table(Z$geno)
```

    ## 
    ## A/A A/G G/G 
    ## 108 233 121

``` r
inds.gg <- Z$geno == "G/G"
inds.ag <- Z$geno == "A/G"
inds.aa <- Z$geno == "A/A"
median(Z$exp[inds.ag])
```

    ## [1] 25.06486

or

``` r
summary(Z$exp[inds.ag])
```

    ##    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
    ##   7.075  20.626  25.065  25.397  30.552  48.034

``` r
boxplot(exp ~ geno, Z)
```

![](class14_files/figure-markdown_github/unnamed-chunk-6-1.png)
