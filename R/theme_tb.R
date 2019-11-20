#' @title TB Theme
#' @description A complete theme based no gplot2::theme_minimal
#'
#' @md
#' @inheritParams ggplot2::theme_minimal
#'
theme_tb <- function(base_size = 11, base_family = "",
                     plot_title_family=base_family, base_line_size = base_size/21,
                     base_rect_size = 10.5/21, major.linetype = 2){


  # basis for the theme is the ggplot2::theme_minimal
  tb <- ggplot2::theme_minimal(base_family=base_family, base_size=base_size, base_line_size = base_size/21,
                               base_rect_size = 10.5/21)

  # set title
  tb <- tb + ggplot2::theme(plot.title=element_text(size = 11.5, face = "bold"))

  # set subtitle
  tb <- tb + ggplot2::theme(plot.subtitle =element_text(size = 11.2))

  tb <- tb + ggplot2::theme(panel.grid.minor = element_blank())

  tb <- tb + ggplot2::theme(panel.grid.major = element_line(linetype = major.linetype))

}
