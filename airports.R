# load the dplyr package
library(dplyr)
# Load sample student data
airports <- read.delim(file="C:/Users/ARDIA REGITA SAFITRI/Documents/DataProject-0/airports.dat", header = FALSE, sep=",")
str(airports)

# Commercial Airports WorldWide
str(airports)

# Mapping all commercial airports in the world
g <- list(
  scope = 'world',
  showland = TRUE,
  landcolor = toRGB("gray95")
)

plot_geo(airports, lat = ~V7, lon = ~V8) %>%
  add_markers(
    text = ~paste(V1, V3, V4, sep = "<br />"),
    color = ~V4, symbol = I("circle"), size = I(3), hoverinfo = "text", colors = "Set1"
  ) %>%
  layout(
    title = 'Commercial Airports Worldwide', geo = g
  )

#https://openflights.org/data.html#airport

