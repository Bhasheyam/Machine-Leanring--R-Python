
<!-- rnb-text-begin -->

---
title: "GGPlot"
output: html_notebook
---


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-frame-begin eyJtZXRhZGF0YSI6eyJjbGFzc2VzIjpbImRhdGEuZnJhbWUiXSwibmNvbCI6NSwibnJvdyI6Nn0sInJkZiI6Ikg0c0lBQUFBQUFBQUJvVlN6VTdDUUJCZStnZXRCUXpnWTlDRGVxY0hqeDZNSE9TNmxnVTJydHVtWGRDanI2RnZaS0lQd0hzWVkyS0N6blozbTFKSm5HUTYwNi96emV3MzIrdUwyV2t3Q3hCQ0ZyS2RGckpzU0IwTEhpM2tJRi9HUjRUc0lTUXVlQS9jaTBlTDB1TGhzN1NYZVBBbTdUMGVhSHlFU290UDFQZUtGMnE4bzZPditSM05EM1hzbjVWbWVKTlAxYmVLSDZwdThxWDZWUGgzZy9lcSt2OGJ0K2FjZGxmeVN2RUhmVzh4SGlNYndncklqc0Z0Z3haRXBBWFdiOEdHNUFWTlVwYm1HdkUzTkY5U1RoUGNhT2NtREJlbVd6VmpnUk1CWElSMnpYS083NGtwZHpVWVRrbUdXWFJKK0ZLc05IYWtzQnM2cjZEd2lvZy9aUXFybDdXbkdVbW9ITEkzMmMvVGg4aE1sd3V6bnRROWVLclEvbW1JQ09aWTRHaVJBK1dBa0hhYUNacHlhR2FadjZ4T2J1VU5vTC9tY3ZoOG5LelcvRzU4TGdmVWJxbXJvMWZMWFRYU01RY3o2L0pnQVpRVHMxR0did25UTHowUVdXcU1zcHh5WVpRQVdrUWloVTBaQk83V0lLVTJ0UHNGQnZYdERWTURBQUE9In0= -->

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":[""],"name":["_rn_"],"type":[""],"align":["left"]},{"label":["Sepal.Length"],"name":[1],"type":["dbl"],"align":["right"]},{"label":["Sepal.Width"],"name":[2],"type":["dbl"],"align":["right"]},{"label":["Petal.Length"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["Petal.Width"],"name":[4],"type":["dbl"],"align":["right"]},{"label":["Species"],"name":[5],"type":["fctr"],"align":["left"]}],"data":[{"1":"5.1","2":"3.5","3":"1.4","4":"0.2","5":"setosa","_rn_":"1"},{"1":"4.9","2":"3.0","3":"1.4","4":"0.2","5":"setosa","_rn_":"2"},{"1":"4.7","2":"3.2","3":"1.3","4":"0.2","5":"setosa","_rn_":"3"},{"1":"4.6","2":"3.1","3":"1.5","4":"0.2","5":"setosa","_rn_":"4"},{"1":"5.0","2":"3.6","3":"1.4","4":"0.2","5":"setosa","_rn_":"5"},{"1":"5.4","2":"3.9","3":"1.7","4":"0.4","5":"setosa","_rn_":"6"}],"options":{"columns":{"min":{},"max":[10],"total":[5]},"rows":{"min":[10],"max":[10],"total":[6]},"pages":{}}}
  </script>
</div>

<!-- rnb-frame-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-plot-begin eyJjb25kaXRpb25zIjpbXSwiaGVpZ2h0Ijo0MzIuNjMyOSwic2l6ZV9iZWhhdmlvciI6MCwid2lkdGgiOjcwMH0= -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucXBsb3QoaXJpcyRQZXRhbC5MZW5ndGgsaXJpcyRQZXRhbC5XaWR0aCwgZGF0YSA9IGlyaXMpXG5gYGAifQ== -->

```r
qplot(iris$Petal.Length,iris$Petal.Width, data = iris)
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin eyJjb25kaXRpb25zIjpbXSwiaGVpZ2h0Ijo0MzIuNjMyOSwic2l6ZV9iZWhhdmlvciI6MCwid2lkdGgiOjcwMH0= -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-frame-begin eyJtZXRhZGF0YSI6eyJjbGFzc2VzIjpbInRibF9kZiIsInRibCIsImRhdGEuZnJhbWUiXSwibmNvbCI6MTEsIm5yb3ciOjZ9LCJyZGYiOiJINHNJQUFBQUFBQUFCcTFUTzAvRE1CQjJuRFNsS1VVVmp3VUpXTnVoa1VEQUNnTy9nS21yeVlOR0pISGtPQzNkK0lFZ1ZuNExRaTNuMUJlYXNGREEwdWY3N254UEo3NjlHWjg1WTRjUVFvbHBHWVNhUUMwS20wRXMwbEh5a1JCekQwZ1gwQWZZK3NCaWhSLzlpZGZ6VVhiK0MwYklqc3B4OWZHczFndkthN0phbGJURGNxRUVVNitzVGRxdkdtOGFXc2R6cUZXSHJiSGUreFlySkIvRUYwT3RPd2xMQ3hZUGt1K1d5MkV0aGsySFA4aFJyMmFFbTVHdldYWUJCNEI5TGZ2YWh1ZEhHaWVBWThDaFJxMTZ0aG1wUjdjOW5tVE1rLytwMW4vWVZzcVNJTmRsdTlxNHJTNHpCT2RDQkFJZEUrNEhNU3ArbEdlb1dQT0FvWmZwelNzZktWaWFvOTBYMDhwRnpwRk9aa2hwV01WNU1jdnpScHNkd1djdXRxcnVuejdCdGx3dTM1dno2T2h5SGpRNlBwUE1EUVhFZzdab2hMUjVKaU1PclJLcVhtNnJFV3lJaHFGZnBLb1RmK1JOaXZSaGRLcWVsVk9lcjFaUGMzdU5kMWMxNlZMbmF1bGNkcERlUjJtQXpjZnNycnJqSFJpNW5Oak5SSlRpWjNUQW1ydVNTNForanNkanRKVERrY1VuQVlsZHpxZ0VBQUE9In0= -->

<div data-pagedtable="false">
  <script data-pagedtable-source type="application/json">
{"columns":[{"label":["manufacturer"],"name":[1],"type":["chr"],"align":["left"]},{"label":["model"],"name":[2],"type":["chr"],"align":["left"]},{"label":["displ"],"name":[3],"type":["dbl"],"align":["right"]},{"label":["year"],"name":[4],"type":["int"],"align":["right"]},{"label":["cyl"],"name":[5],"type":["int"],"align":["right"]},{"label":["trans"],"name":[6],"type":["chr"],"align":["left"]},{"label":["drv"],"name":[7],"type":["chr"],"align":["left"]},{"label":["cty"],"name":[8],"type":["int"],"align":["right"]},{"label":["hwy"],"name":[9],"type":["int"],"align":["right"]},{"label":["fl"],"name":[10],"type":["chr"],"align":["left"]},{"label":["class"],"name":[11],"type":["chr"],"align":["left"]}],"data":[{"1":"audi","2":"a4","3":"1.8","4":"1999","5":"4","6":"auto(l5)","7":"f","8":"18","9":"29","10":"p","11":"compact"},{"1":"audi","2":"a4","3":"1.8","4":"1999","5":"4","6":"manual(m5)","7":"f","8":"21","9":"29","10":"p","11":"compact"},{"1":"audi","2":"a4","3":"2.0","4":"2008","5":"4","6":"manual(m6)","7":"f","8":"20","9":"31","10":"p","11":"compact"},{"1":"audi","2":"a4","3":"2.0","4":"2008","5":"4","6":"auto(av)","7":"f","8":"21","9":"30","10":"p","11":"compact"},{"1":"audi","2":"a4","3":"2.8","4":"1999","5":"6","6":"auto(l5)","7":"f","8":"16","9":"26","10":"p","11":"compact"},{"1":"audi","2":"a4","3":"2.8","4":"1999","5":"6","6":"manual(m5)","7":"f","8":"18","9":"26","10":"p","11":"compact"}],"options":{"columns":{"min":{},"max":[10],"total":[11]},"rows":{"min":[10],"max":[10],"total":[6]},"pages":{}}}
  </script>
</div>

<!-- rnb-frame-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGlicmFyeShnZ3Bsb3QyKVxuZGF0YShtcGcsIHBhY2thZ2U9XCJnZ3Bsb3QyXCIpXG4jIG1wZyA8LSByZWFkLmNzdihcImh0dHA6Ly9nb28uZ2wvdUVlUkd1XCIpXG5tcGdfc2VsZWN0IDwtIG1wZ1ttcGckbWFudWZhY3R1cmVyICVpbiUgYyhcImF1ZGlcIiwgXCJmb3JkXCIsIFwiaG9uZGFcIiwgXCJoeXVuZGFpXCIpLCBdXG4jIFNjYXR0ZXJwbG90XG50aGVtZV9zZXQodGhlbWVfYncoKSkgICMgcHJlLXNldCB0aGUgYncgdGhlbWUuXG5nIDwtIGdncGxvdChtcGdfc2VsZWN0LCBhZXMoZGlzcGwsIGN0eSkpICsgXG4gIGxhYnMoc3VidGl0bGU9XCJtcGc6IERpc3BsYWNlbWVudCB2cyBDaXR5IE1pbGVhZ2VcIixcbiAgICAgICB0aXRsZT1cIkJ1YmJsZSBjaGFydFwiKVxuZyArIGdlb21faml0dGVyKGFlcyhjb2w9bWFudWZhY3R1cmVyLCBzaXplPWh3eSkpICsgXG4gIGdlb21fc21vb3RoKGFlcyhjb2w9bWFudWZhY3R1cmVyKSwgbWV0aG9kPVwibG1cIiwgc2U9RilcbmBgYCJ9 -->

```r
library(ggplot2)
data(mpg, package="ggplot2")
# mpg <- read.csv("http://goo.gl/uEeRGu")
mpg_select <- mpg[mpg$manufacturer %in% c("audi", "ford", "honda", "hyundai"), ]
# Scatterplot
theme_set(theme_bw())  # pre-set the bw theme.
g <- ggplot(mpg_select, aes(displ, cty)) + 
  labs(subtitle="mpg: Displacement vs City Mileage",
       title="Bubble chart")
g + geom_jitter(aes(col=manufacturer, size=hwy)) + 
  geom_smooth(aes(col=manufacturer), method="lm", se=F)
```

<!-- rnb-source-end -->

<!-- rnb-plot-begin eyJjb25kaXRpb25zIjpbXSwiaGVpZ2h0Ijo0MzIuNjMyOSwic2l6ZV9iZWhhdmlvciI6MCwid2lkdGgiOjcwMH0= -->

<img src="data:image/png;base64,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" />

<!-- rnb-plot-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->




<!-- rnb-text-end -->
