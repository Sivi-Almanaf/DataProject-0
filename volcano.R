# Load the `plotly` library
library(plotly)

# Your volcano data
str(volcano)

#common
plot_ly(z = ~volcano)
# The heatmap
plot_ly(z = ~volcano, type = "heatmap")

# The 3d surface map
plot_ly(z = ~volcano, type = "surface")