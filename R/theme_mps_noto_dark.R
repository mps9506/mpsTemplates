#' an opinionated [ggplot2] theme
#'
#' Provides a [ggplot2] theme.
#'
#' @param base_family defaults to \code{"NotoSansDisplay_Condensed"}. Which is
#'   provided in the package. Generally, use a sensible sans serif font that is
#'   available on your system.
#' @param base_size default text size in px
#' @param base_line_size default line size
#' @param base_rect_size default rect size
#' @import ggplot2
#' @export
#' @details Uses Google's Noto Sans Display font by default. Using the
#'   [ragg::agg_png()] or related graphics device should ensure the font is
#'   properly detected and used.
#' @examples
#' library(ggplot2)
#' library(ragg)
#'
#' file <- tempfile(fileext = '.png')
#' agg_png(file)
#' ggplot(cars) +
#'   geom_point(aes(speed, dist)) +
#'   theme_mps_noto_dark() +
#'   labs(title = "Cars", subtitle = "Speed and stopping distance",
#'        caption = "Ezekiel, M (1930) Methods of Correlation Analysis",
#'        x = "Speed [mph]",
#'        y = "Stopping Distance [ft]")
#' dev.off()
theme_mps_noto_dark <- function(base_size = 11,
                                base_family = "NotoSansDisplay_SC",
                                base_line_size = 0.5,
                                base_rect_size = 0.5) {
  ## some defaults
  half_line <- base_size / 2L
  text_color <- "white"
  rect_color <- "#839496"
  body_bg <- "#073642"
  geom_color <- "#b58900"

  # ## set geom defaults
  # ggplot2::update_geom_defaults("point", list(colour = geom_color))
  # ggplot2::update_geom_defaults("line", list(colour = geom_color))
  # ggplot2::update_geom_defaults("area", list(colour = geom_color, fill = geom_color))
  # ggplot2::update_geom_defaults("rect", list(colour = geom_color, fill = geom_color))
  # ggplot2::update_geom_defaults("density", list(colour = geom_color, fill = geom_color))
  # ggplot2::update_geom_defaults("bar", list(colour = geom_color, fill = geom_color))
  # ggplot2::update_geom_defaults("col", list(colour = geom_color, fill = geom_color))
  # ggplot2::update_geom_defaults("text", list(colour = alpha(text_color, 0.75)))

  ggplot2::theme(
    # main attributes

    line = ggplot2::element_line(colour = alpha(text_color, 0.55),
                                 size = base_line_size,
                                 linetype = 1L,
                                 lineend = "butt"),
    rect = ggplot2::element_rect(fill = rect_color,
                                 colour = rect_color,
                                 size = base_rect_size,
                                 linetype = 1L),
    text = ggplot2::element_text(family = base_family,
                                 face = "plain",
                                 colour = alpha(text_color, 0.75),
                                 size = base_size,
                                 hjust = 0.5,
                                 vjust = 0.5,
                                 angle = 0,
                                 lineheight = 0.9,
                                 margin = ggplot2::margin(),
                                 debug = FALSE),

    # Plot Attributes

    plot.tag = ggplot2::element_text(size = base_size * 1.5,
                                     hjust = 0L,
                                     vjust = 0L,
                                     face = "bold",
                                     margin = ggplot2::margin(b = 10L)),
    plot.tag.position = "topleft",
    plot.title = ggplot2::element_text(color = alpha(text_color, 0.95),
                                       size = base_size * 12 / 8.5,
                                       hjust = 0L,
                                       vjust = 0L,
                                       family = base_family,
                                       face = "bold",
                                       margin = ggplot2::margin(b = 10L)),
    plot.title.position = "plot",
    plot.subtitle = ggplot2::element_text(color = alpha(text_color, 0.75),
                                          size = base_size * 9.5 / 8.5,
                                          hjust = 0L,
                                          vjust = 0L,
                                          family = base_family,
                                          margin = ggplot2::margin(b = 10L)),
    plot.caption = ggplot2::element_text(color = alpha(text_color, 0.75),
                                         size = base_size * 7 / 8.5,
                                         hjust = 1L,
                                         vjust = 1L,
                                         margin = ggplot2::margin(t = half_line * 0.9)),
    plot.caption.position = "plot",
    plot.background = element_rect(color = NA,
                                   fill = body_bg),

    plot.margin = ggplot2::margin(t = half_line,
                                  r = base_line_size * 24,
                                  b = half_line,
                                  l = half_line),

    # axis attributes

    axis.text = ggplot2::element_text(size = base_size),
    axis.text.x = ggplot2::element_text(vjust = 1, margin = ggplot2::margin(t = 4L)),
    axis.text.y = ggplot2::element_text(),
    axis.text.x.top = NULL,
    axis.text.y.right = NULL,
    axis.ticks.length.x = NULL,
    axis.ticks.length.x.top = NULL,
    axis.ticks.length.x.bottom = NULL,
    axis.ticks.length.y = NULL,
    axis.ticks.length.y.left = NULL,
    axis.ticks.length.y.right = NULL,

    axis.title = ggplot2::element_text(size = base_size),
    axis.title.x = ggplot2::element_text(margin = ggplot2::margin(t = 8L)),
    axis.title.y = ggplot2::element_text(angle = 90L,
                                         margin = ggplot2::margin(r = 4L)),
    axis.title.x.top = NULL,
    axis.title.y.right = NULL,

    axis.ticks = ggplot2::element_line(colour = alpha(rect_color, 0.4)),
    axis.ticks.length = ggplot2::unit(4L, "pt"),
    axis.ticks.x = ggplot2::element_line(colour = NULL,
                                         size = NULL,
                                         linetype = NULL,
                                         lineend = NULL),
    axis.ticks.y = ggplot2::element_line(colour = NULL,
                                         size = NULL,
                                         linetype = NULL,
                                         lineend = NULL),

    axis.line = ggplot2::element_line(),
    axis.line.x = ggplot2::element_line(),
    axis.line.x.bottom = element_blank(),
    axis.line.x.top = element_blank(),
    axis.line.y = ggplot2::element_line(),
    axis.line.y.left = element_blank(),
    axis.line.y.right = element_blank(),

    # legend attributes

    legend.background = ggplot2::element_blank(),

    legend.spacing = ggplot2::unit(20L, "pt"),
    legend.spacing.x = ggplot2::unit(4L, "pt"),
    legend.spacing.y = NULL,

    legend.key = ggplot2::element_blank(),
    legend.key.size = ggplot2::unit(10L, "pt"),
    legend.key.height = NULL,
    legend.key.width = NULL,

    legend.text = ggplot2::element_text(size = base_size * 9.5 / 8.5,
                                        vjust = 0.5),
    legend.text.align = NULL,
    legend.title = ggplot2::element_text(),
    legend.title.align = NULL,

    legend.position = "bottom",
    legend.direction = "horizontal",
    legend.justification = NULL,
    legend.margin = ggplot2::margin(t = 6L, r = 0L, b = 6L, l = 0L, "pt"),

    legend.box = "horizontal",
    legend.box.margin = NULL,
    legend.box.background = NULL,
    legend.box.spacing = NULL,

    # panel attributes

    panel.background = ggplot2::element_rect(fill = alpha("#1C2023", 0.75), colour = NA),
    panel.border = ggplot2::element_rect(color = alpha(rect_color, 0.5),
                                         fill = NA),
    panel.ontop = FALSE,

    panel.spacing = ggplot2::unit(6L, "pt"),
    panel.spacing.x = NULL,
    panel.spacing.y = NULL,

    panel.grid = NULL,
    panel.grid.major = ggplot2::element_line(),
    panel.grid.major.x = ggplot2::element_blank(),
    panel.grid.major.y = ggplot2::element_line(linetype = "dotted",
                                               color = alpha(rect_color, 0.5)),
    panel.grid.minor = ggplot2::element_line(),
    panel.grid.minor.x = ggplot2::element_blank(),
    panel.grid.minor.y = ggplot2::element_blank(),

    # strip attributes (Faceting)

    strip.background = ggplot2::element_rect(fill = "#dedddd",
                                             colour = NA,
                                             size = 10L),
    strip.text = ggplot2::element_text(face = "bold",
                                       size = base_size * 9.5 / 8.5,
                                       margin = ggplot2::margin(t = 0L, r = 0L, b = 0L, l = 0L)),

    strip.text.x = ggplot2::element_text(margin = ggplot2::margin(t = 4.5, b = 4.5)),
    strip.text.y = ggplot2::element_text(angle = -90L,
                                         margin = ggplot2::margin(l = 4.5, r = 4.5)),

    strip.placement = "inside",
    strip.placement.x =  NULL,
    strip.placement.y =  NULL,

    strip.switch.pad.grid = ggplot2::unit(0.1, "cm"),
    strip.switch.pad.wrap = ggplot2::unit(0.1, "cm"),

    # create a complete format
    complete = TRUE

  )
}


#' Change geom defaults from black to custom lights
#'
#' @export
noto_dark_geom_defaults <- function() {

  geoms <- c("abline", "area", "bar", "boxplot", "col", "crossbar",
             "density", "dotplot", "errorbar", "errorbar",
             "hline", "line", "linerange",
             "map", "path", "point", "polygon", "rect", "ribbon", "rug", "segment",
             "step", "tile", "violin", "vline")

  for (g in geoms) {
    update_geom_defaults(g, list(colour = "#96896B", fill = "#96896B"))
  }

  geoms <- c("text", "label")

  for (g in geoms) {
    update_geom_defaults(g, list(colour = alpha("white", 0.85), fill = alpha("white", 0.20)))
  }

}
