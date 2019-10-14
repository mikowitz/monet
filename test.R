library("aqp")

color <- munsell2rgb(the_hue=c('10YR', '2.5YR'), the_value=c(3, 5), the_chroma=c(5, 6), return_triplets=TRUE)

# RGB triplets to closest Munsell color (in RGB space)
# function is vectorized
rgb2munsell(color)

d <- expand.grid(hue='10YR', value=2:8, chroma=1:8, stringsAsFactors=FALSE)
d$color <- with(d, munsell2rgb(hue, value, chroma))

# similar to the 10YR color book page
plot(value ~ chroma, data=d, col=d$color, pch=15, cex=3)
