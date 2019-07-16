# blank/ transparent theme for mapping
theme_map <- function(){
  theme(
    axis.text = element_blank(),
    axis.ticks = element_blank(),
    panel.grid.major = element_line(color = NA),
    panel.background = element_blank(),
    plot.background = element_rect(fill = "transparent", color = NA),
    legend.background = element_rect(fill = "transparent", color = NA)
  )
}

# custom fill function
custom_fill <- function(pal = "YlGnBu", name, guide = guide_colorbar(ticks = F), direction = 1, na.value = "gray50"){
  scale_fill_distiller(palette = pal, name = name, guide = guide, direction = direction, na.value = na.value)
}
