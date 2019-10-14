library("aqp")

# f <- data.frame(r=c(169), g=c(175), b=c(200))
f <- data.frame(r=c(169/255), g=c(175/255), b=c(200/255))
rgb2munsell(f)
