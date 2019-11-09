#' TB color palette
#'
#' @param palette Chose a palette from tb.color list. Defaoult is all
#'
#' @param reverse logical. If True palette is reversed
#'
#' @example
#' scales::show_col(tb_pal()(9))
#'
#' @export
tb_pal <- function(palette = "all", reverse = FALSE){

  cur_pal <- tb_palettes[[palette]]

  if (reverse){
    cur_pal <- rev(cur_pal)
  }

  scales::manual_pal(cur_pal)

}

#' Discrete color & fill scale based on the TB color palette
#'
#' See [tb_pal]()
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_tb
#' @export
scale_color_tb <- function(..., palette = "all", reverse = FALSE){

  ggplot2::discrete_scale("colour", "tb", palette = tb_pal(palette = palette, reverse = reverse), ...)

}


#' @export
#' @rdname scale_tb
scale_colour_tb<- scale_color_tb

#' @export
#' @rdname scale_tb
scale_fill_tb <- function(..., palette = "all", reverse = FALSE) {

  ggplot2::discrete_scale("fill", "tb", palette = tb_pal(palette = palette, reverse = reverse), ...)

}
