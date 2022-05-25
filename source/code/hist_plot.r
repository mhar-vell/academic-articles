###################
# Config Commands #
###################

require(tikzDevice)

beamer.parms = list(paperwidth = 364.19536 / 72,
                    paperheight = 273.14662 / 72,
                    textwidth = 307.28987 / 72,
                    textheight = 269.14662 / 72)

# path from home directory 
tikzDevice::tikz(filename = 'Coding/academic-articles/source/r_graphics/hist_plot.tex',
                 width = beamer.parms$textwidth,
                 height = beamer.parms$textheight)


##################
# Make the graph #
##################

# Histogram
# Read values from tab-delimited autos.dat 
cars <- c(1, 3, 6, 4, 9)

# Calculate range from 0 to max value of cars and trucks
g_range <- range(0, cars, trucks)
# Graph cars with specified labels for axes.  Use blue 
# borders and diagonal lines in bars.
barplot(cars, xlab="Days",
        ylab="Total", names.arg=c("Mon","Tue","Wed","Thu","Fri"),
        border="blue", density=c(10,20,30,40,50))

##################
# Close the file #
##################
dev.off()
