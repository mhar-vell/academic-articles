###################
# Config Commands #
###################

require(tikzDevice)

beamer.parms = list(paperwidth = 364.19536 / 72,
                    paperheight = 273.14662 / 72,
                    textwidth = 307.28987 / 72,
                    textheight = 269.14662 / 72)

# path from home directory 
tikzDevice::tikz(filename = 'Coding/academic-articles/source/r_graphics/pie_plot.tex',
                 width = beamer.parms$textwidth,
                 height = beamer.parms$textheight)


##################
# Make the graph #
##################

# The basic syntax for creating a pie-chart using the R is
# pie(x, labels, radius, main, col, clockwise)

# Create data for the graph.
x <-  c(21, 62, 10,53)
labels <-  c("London","New York","Singapore","Mumbai")

piepercent<- round(100*x / sum(x), 1)

# Plot the chart.
pie(x, labels = piepercent, col = rainbow(length(x)))

legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,
       fill = rainbow(length(x)), bty = "n")


##################
# Close the file #
##################
dev.off()

