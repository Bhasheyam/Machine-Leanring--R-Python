GGplot
================
Bhasheyam Krishnan

``` r
foctor = function(x){
  num = x - min(x)
  den = max(x) - min(x)
  return (num/den)
}
irisnorm = as.data.frame(lapply(iris[1:4],foctor))
```

``` r
irisf = cbind(irisnorm,iris$Species)
```

``` r
set.seed(123)
gp=runif(150)
irisf=irisf[ordered(gp),]
sample1=sample(2, nrow(irisf), replace = TRUE, prob = c(0.67, 0.33))
iristrain=irisf[sample1==1,1:4]
iristest=irisf[sample1==2,1:4]
iristrainlabel=irisf[sample1==1,5]
iristestlabel=irisf[sample1==2,5]
fix(iristrainlabel)
iristrainlabel
```

    ##   [1] virginica  versicolor virginica  virginica  setosa     versicolor
    ##   [7] virginica  versicolor versicolor virginica  versicolor virginica 
    ##  [13] versicolor setosa     virginica  setosa     setosa     virginica 
    ##  [19] virginica  virginica  versicolor virginica  versicolor versicolor
    ##  [25] setosa     virginica  virginica  setosa     versicolor virginica 
    ##  [31] setosa     setosa     versicolor versicolor setosa     setosa    
    ##  [37] versicolor setosa     virginica  setosa     virginica  setosa    
    ##  [43] versicolor setosa     virginica  virginica  versicolor versicolor
    ##  [49] setosa     versicolor virginica  virginica  virginica  virginica 
    ##  [55] versicolor setosa     versicolor versicolor setosa     virginica 
    ##  [61] versicolor virginica  setosa     versicolor virginica  virginica 
    ##  [67] setosa     versicolor versicolor versicolor setosa     virginica 
    ##  [73] versicolor versicolor versicolor virginica  versicolor virginica 
    ##  [79] versicolor versicolor virginica  setosa     versicolor virginica 
    ##  [85] versicolor versicolor setosa     setosa     setosa     setosa    
    ##  [91] setosa     virginica  virginica  virginica  virginica  versicolor
    ##  [97] versicolor virginica  virginica  virginica  setosa     versicolor
    ## [103] setosa     setosa     setosa    
    ## Levels: setosa versicolor virginica

``` r
library(class)
model=knn(train=iristrain,test = iristest, cl=iristrainlabel,k=3)
summary(model)
```

    ##     setosa versicolor  virginica 
    ##         20         14         11

``` r
table (model,iristestlabel)
```

    ##             iristestlabel
    ## model        setosa versicolor virginica
    ##   setosa         20          0         0
    ##   versicolor      0         13         1
    ##   virginica       0          0        11

``` r
library(caret)
```

    ## Warning: package 'caret' was built under R version 3.4.3

    ## Loading required package: lattice

    ## Warning: package 'lattice' was built under R version 3.4.3

    ## Loading required package: ggplot2

``` r
library(lattice)
library(ggplot2)
decisionplot <- function(model, data, class = NULL, predict_type = "class",
  resolution = 100, showgrid = TRUE, ...) {

  if(!is.null(class)) cl <- data[,class] else cl <- 1
  data <- data[,1:2]
  k <- length(unique(cl))

  plot(data, col = as.integer(cl)+1L, pch = as.integer(cl)+1L, ...)

  # make grid
  r <- sapply(data, range, na.rm = TRUE)
  xs <- seq(r[1,1], r[2,1], length.out = resolution)
  ys <- seq(r[1,2], r[2,2], length.out = resolution)
  g <- cbind(rep(xs, each=resolution), rep(ys, time = resolution))
  colnames(g) <- colnames(r)
  g <- as.data.frame(g)

  ### guess how to get class labels from predict
  ### (unfortunately not very consistent between models)
  p <- predict(model, g, type = predict_type)
  if(is.list(p)) p <- p$class
  p <- as.factor(p)

  if(showgrid) points(g, col = as.integer(p)+1L, pch = ".")

  z <- matrix(as.integer(p), nrow = resolution, byrow = TRUE)
  contour(xs, ys, z, add = TRUE, drawlabels = FALSE,
    lwd = 2, levels = (1:(k-1))+.5)

  invisible(z)
}
model1 <- knn3(Species ~ ., data=iris, k = 10)
#decisionplot(model1, iris, class = "Species", main = "kNN (10)")
```

``` r
fix(iris)
```
