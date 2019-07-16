# Quickly make a choropleth map using ggplot2

qmap <- function(sf, variable, pal = "YlGnBu"){
	
plot = ggplot() +
   geom_sf(aes_string(fill = variable), data = sf) +
  theme(
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid.major = element_line(color = NA),
    panel.background = element_blank(),
    plot.background = element_rect(fill = "transparent", color = NA),
    legend.background = element_rect(fill = "transparent", color = NA)
  ) +
  scale_fill_distiller(palette = pal)
  

   return(plot)
}
