###################
# Config Commands #
###################

require(tikzDevice)

beamer.parms = list(paperwidth = 364.19536 / 72,
                    paperheight = 273.14662 / 72,
                    textwidth = 307.28987 / 72,
                    textheight = 269.14662 / 72)

# path from home directory 
tikzDevice::tikz(filename = 'Coding/academic-articles/source/r_graphics/box_plot.tex',
                 width = beamer.parms$textwidth,
                 height = beamer.parms$textheight)


##################
# Make the graph #
##################

# BOXPLOT

boxplot(mpg ~ cyl, data = mtcars, xlab = "Number of Cylinders",
   ylab = "Miles Per Gallon")

##################
# Close the file #
##################
dev.off()
