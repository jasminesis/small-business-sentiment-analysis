# ggplot settings, credits to Joe Marlo
# https://github.com/joemarlo/ATUS-similarity/blob/master/Plots/ggplot_settings.R


theme_custom <- function() {
  theme_gray() +
    theme(
      panel.grid.minor.y = element_line(color = NA),
      panel.grid.major.y = element_line(color = "gray95"),
      panel.grid.minor.x = element_line(color = NA),
      panel.grid.major.x = element_line(color = "gray95"),
      panel.background = element_rect(fill = NA),
      plot.background = element_rect(
        fill = NA,
        color = "gray95",
        size = 10
      ),
      plot.margin = unit(c(1, 1, 1, 1), "cm"),
      axis.title = element_text(color = "gray30"),
      axis.ticks = element_line(color = NA),
      strip.background = element_rect(fill = "gray95"),
      strip.text = element_text(
        color = "gray30",
        size = 11,
        face = "bold"
      ),
      plot.title = element_text(face = "bold"),
      plot.subtitle = element_text(size = 10),
      text = element_text(
        family = "Helvetica",
        color = "gray30"
      ),
      plot.caption = element_text(
        face = "italic",
        size = 6,
        color = "grey50"
      ),
      legend.key = element_rect(fill = NA)
    )
}
