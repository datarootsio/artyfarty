#' Theme 'farty'
#'
#' A theme that was strongly based on http://minimaxir.com/2015/02/ggplot-tutorial/
#'
#' @return theme
#' @import ggplot2 grid
#' @export
theme_farty <- function(){
  palette <- c("#FFFFFF", "#F0F0F0", "#D9D9D9", "#BDBDBD", "#969696", "#737373",
               "#525252", "#252525", "#000000") # = brewer.pal 'greys'
  color.background = palette[2]
  color.grid.major = palette[3]
  color.axis.text = palette[6]
  color.axis.title = palette[7]
  color.title = palette[9]

  theme_bw(base_size=9) +
    theme(

      panel.background=element_rect(fill=color.background, color=color.background),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.25),
      panel.grid.minor=element_blank(),
      axis.ticks=element_blank(),

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=color.background, color=NA),
      legend.text = element_text(size=7,color=color.axis.title),

      plot.title=element_text(color=color.title, size=10, vjust=1.25),
      axis.text.x=element_text(size=7,color=color.axis.text),
      axis.text.y=element_text(size=7,color=color.axis.text),
      axis.title.x=element_text(size=8,color=color.axis.title, vjust=0),
      axis.title.y=element_text(size=8,color=color.axis.title, vjust=1.25),

      plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")
    )

}


#' Theme 'five38'
#'
#' A theme inspired by http://fivethirtyeight.com/
#'
#' @param grid_lines the direction of the grid lines, either \code{vertical} or \code{horizontal}
#'
#' @return theme
#' @export
theme_five38 <- function(grid_lines = "vertical"){

  color.background = "#F0F0F0"
  color.grid.major = "#D3D3D3"
  color.text = "#181818"

  if(grid_lines == "vertical"){
    grid.major.x = element_blank()
    grid.major.y = element_line()
  } else {
    grid.major.x = element_line()
    grid.major.y = element_blank()
  }

  theme_bw(base_size=12, base_family = fonts_selector("Helvetica","Arial", "sans", "sans-serif")) +
    theme(

      panel.background=element_rect(fill=color.background, color=color.background),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.25),
      panel.grid.major.x=grid.major.x,
      panel.grid.major.y=grid.major.y,
      panel.grid.minor=element_blank(),
      axis.ticks=element_blank(),

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=color.background, color=NA),
      legend.text = element_text(size=rel(.8),color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.05), vjust=1.25),
      axis.text.x=element_text(size=rel(.95),color=color.text),
      axis.text.y=element_text(size=rel(.95),color=color.text, face="bold"),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25),

      plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")
    )

}


#' Theme 'ft'
#'
#' A theme inspired by https://www.ft.com/
#'
#' @param grid_lines the direction of the grid lines, either \code{vertical} or \code{horizontal}
#'
#' @return theme
#' @export
theme_ft <- function(grid_lines = "vertical"){

  color.background = "#FFF1E0"
  color.grid.major = "#D3D3D3"
  color.text = "#181818"
  color.background.legend = "#F6E9D8"

  if(grid_lines == "vertical"){
    grid.major.x = element_blank()
    grid.major.y = element_line()
  } else {
    grid.major.x = element_line()
    grid.major.y = element_blank()
  }

  theme_bw(base_size=12, base_family = fonts_selector("Times New Roman", "Times", "serif")) +
    theme(

      panel.background=element_rect(fill=color.background, color=color.background),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.25),
      panel.grid.major.x=grid.major.x,
      panel.grid.major.y=grid.major.y,
      panel.grid.minor=element_blank(),
      axis.ticks=element_blank(),

      legend.background = element_rect(fill=color.background.legend),
      legend.key = element_rect(fill=color.background, color=color.background),
      legend.text = element_text(size=rel(.8),color=color.text),
      legend.position = "top",

      plot.title=element_text(color=color.text, size=rel(1.3), face = "bold"),
      axis.text.x=element_text(size=rel(.9),color=color.text),
      axis.text.y=element_text(size=rel(.9),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25),

      plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")
    )

}



#' Theme 'economist'
#'
#' A theme inspired by https://www.ft.com/
#'
#' @param grid_lines the direction of the grid lines, either \code{vertical} or \code{horizontal}
#'
#' @return theme
#' @export
theme_economist <- function(grid_lines = "vertical"){

  color.background = "#D5E2EA"
  color.grid.major = "#ECF2F5"
  color.text = "#181818"
  color.axis = "#181818"

  if(grid_lines == "vertical"){
    grid.major.x = element_blank()
    grid.major.y = element_line()
    axis.ticks.y = element_blank()
    axis.ticks.x = element_line(color=color.axis)
    axis.line.x = element_line(color=color.axis)
    axis.line.y = element_blank()
  } else {
    grid.major.x = element_line()
    grid.major.y = element_blank()
    axis.ticks.y = element_line(color=color.axis)
    axis.ticks.x = element_blank()
    axis.line.x = element_blank()
    axis.line.y = element_line(color=color.axis)
  }

  theme_bw(base_size=12, base_family = fonts_selector("Verdana", "Geneva", "sans-serif", "sans")) +
    theme(
      panel.background=element_rect(fill=color.background, color=color.background),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=1.05),
      panel.grid.major.x=grid.major.x,
      panel.grid.major.y=grid.major.y,
      panel.grid.minor=element_blank(),
      axis.ticks.y=axis.ticks.y,
      axis.ticks.x=axis.ticks.x,
      axis.line.x=axis.line.x,
      axis.line.y=axis.line.y,

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=color.background, color=color.background),
      legend.text = element_text(size=rel(.7), color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.2), face = "bold", hjust=0),
      axis.text.x=element_text(size=rel(.9),color=color.text),
      axis.text.y=element_text(size=rel(.9),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25),

      plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")
    )

}

#' Theme 'bain'
#'
#' A theme inspired by https://www.ft.com/
#'
#' @param grid_lines the direction of the grid lines, either \code{vertical} or \code{horizontal}
#'
#' @return theme
#' @export
theme_bain <- function(grid_lines = "vertical"){

  color.background = "#D5E2EA"
  color.text = "#201F1D"
  color.text.title = "#EE3324"
  color.axis = "#201F1D"

  if(grid_lines == "vertical"){
    axis.line.x = element_line(color=color.axis, size=1)
    axis.line.y = element_blank()
  } else {
    axis.line.x = element_blank()
    axis.line.y = element_line(color=color.axis, size=1)
  }

  theme_bw(base_size=12, base_family = fonts_selector("Helvetica","Arial", "sans", "sans-serif")) +
    theme(
      panel.background=element_rect(fill=NA, color=NA),
      plot.background=element_rect(fill=NA, color=NA),
      panel.border=element_rect(color=NA),

      panel.grid.major=element_blank(),
      panel.grid.minor=element_blank(),
      axis.ticks=element_blank(),
      axis.line.x=axis.line.x,
      axis.line.y=axis.line.y,

      legend.background = element_rect(fill=NA),
      legend.key = element_rect(fill=NA, color=NA),
      legend.text = element_text(size=rel(.7), color=color.text),

      plot.title=element_text(color=color.text.title, size=rel(1), face = "bold", hjust=0),
      axis.text.x=element_text(size=rel(.9),color=color.text),
      axis.text.y=element_text(size=rel(.9),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25),

      plot.margin = unit(c(0.35, 0.2, 0.3, 0.35), "cm")
    )

}



#' Theme 'scientific'
#'
#' A theme that was strongly based on http://minimaxir.com/2015/02/ggplot-tutorial/
#'
#' @return theme
#' @export
theme_scientific <- function(){
  palette <- c("#FFFFFF", "#F0F0F0", "#D9D9D9", "#BDBDBD", "#969696", "#737373",
               "#525252", "#252525", "#000000") # = brewer.pal 'greys'
  color.background = palette[2]
  color.grid.major = palette[3]
  color.axis.text = palette[6]
  color.axis.title = palette[7]
  color.title = palette[9]
  color.axis = palette[5]

  theme_bw(base_size=11) +
    theme(

      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.25, linetype=2),
      panel.grid.minor=element_blank(),
      axis.line.x=element_line(color=color.axis),
      axis.line.y=element_line(color=color.axis),
      axis.ticks=element_line(color=color.axis),

      legend.key = element_rect(fill=NA, color=NA),
      legend.text = element_text(size=rel(.8),color=color.axis.title),

      plot.title=element_text(color=color.title, size=rel(1.2), vjust=1.25),
      axis.text.x=element_text(size=rel(.9),color=color.axis.text),
      axis.text.y=element_text(size=rel(.9),color=color.axis.text),
      axis.title.x=element_text(size=rel(1),color=color.axis.title, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.axis.title, vjust=1.25)
    )

}


#' Theme 'monokai'
#'
#' A theme that was strongly based on the base16 monokai scheme http://chriskempson.github.io/base16/
#'
#' @return theme
#' @export
theme_monokai <- function(){
  color.background = "#272822"
  color.grid.major = "#A59F85"
  color.text = "#49483E"
  color.axis = "#F9F8F5"

  theme_bw(base_size=12) +
    theme(

      panel.background=element_rect(fill=color.background, color=color.background),
      # plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.4, linetype=2),
      panel.grid.minor=element_blank(),
      axis.line.x=element_line(color=color.grid.major, size=1),
      axis.line.y=element_line(color=color.grid.major, size=1),
      axis.ticks=element_line(color=NA),

      # legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=color.background, color=NA),
      legend.text = element_text(size=rel(.8),color=color.text),#color.axis.title),
      legend.title = element_text(color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.2), vjust=1.25),
      axis.text.x=element_text(size=rel(.95),color=color.text),
      axis.text.y=element_text(size=rel(.95),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25)
    )

}

#' Theme 'monokai_full'
#'
#' A theme that was strongly based on the base16 monokai scheme http://chriskempson.github.io/base16/
#'
#' @return theme
#' @export
theme_monokai_full <- function(){
  color.background = "#272822"
  color.grid.major = "#A59F85"
  color.text = "#F8F8F2"
  color.axis = "#F9F8F5"

  theme_bw(base_size=12) +
    theme(

      panel.background=element_rect(fill=color.background, color=color.background),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid.major,size=.4, linetype=2),
      panel.grid.minor=element_blank(),
      axis.line.x=element_line(color=color.grid.major, size=1),
      axis.line.y=element_line(color=color.grid.major, size=1),
      axis.ticks=element_line(color=NA),

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=color.background, color=NA),
      legend.text = element_text(size=rel(.8),color=color.text),#color.axis.title),
      legend.title = element_text(color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.2), vjust=1.25),
      axis.text.x=element_text(size=rel(.95),color=color.text),
      axis.text.y=element_text(size=rel(.95),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25)
    )

}



#' Theme 'flat'
#'
#' A theme that was strongly based on theme 'flat' from the ggthemr package + the base16 flat colors
#'
#' @return theme
#' @export
theme_flat <- function(){
  color.background = "#ECF0F1"
  color.text = "#2C3E50"
  color.grid = "#BDC3C7"
  color.axis.line = "#2C3E50"

  theme_bw(base_size=12) +
    theme(

      panel.background=element_rect(fill=color.background, color=NA),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid,size=.3, linetype = 2),
      panel.grid.minor=element_blank(),
      axis.line.x=element_line(color=color.axis.line),
      axis.line.y=element_line(color=color.axis.line),
      axis.ticks=element_blank(),

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=NA, color=NA),
      legend.text = element_text(size=rel(.8),color=color.text),
      legend.title = element_text(color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.2), vjust=1.25),
      axis.text.x=element_text(size=rel(.95),color=color.text),
      axis.text.y=element_text(size=rel(.95),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25)
    )

}

#' Theme 'retro'
#'
#' A retro theme
#'
#' @return theme
#' @export
theme_retro <- function(){
  color.background = "#ECF0F1"
  color.text = "#2C3E50"
  color.grid = "#2C3E50"
  color.axis.line = "#2C3E50"

  theme_bw(base_size=12, base_family = fonts_selector("Times New Roman", "Times", "serif")) +
    theme(

      panel.background=element_rect(fill=color.background, color=NA),
      plot.background=element_rect(fill=color.background, color=color.background),
      panel.border=element_rect(color=color.background),

      panel.grid.major=element_line(color=color.grid,size=.2, linetype = 2),
      panel.grid.minor=element_blank(),
      axis.line.x=element_line(color=color.axis.line),
      axis.line.y=element_line(color=color.axis.line),
      axis.ticks=element_blank(),

      legend.background = element_rect(fill=color.background),
      legend.key = element_rect(fill=NA, color=NA),
      legend.text = element_text(size=rel(.8),color=color.text),
      legend.title = element_text(color=color.text),

      plot.title=element_text(color=color.text, size=rel(1.2)),
      axis.text.x=element_text(size=rel(.95),color=color.text),
      axis.text.y=element_text(size=rel(.95),color=color.text),
      axis.title.x=element_text(size=rel(1),color=color.text, vjust=0),
      axis.title.y=element_text(size=rel(1),color=color.text, vjust=1.25)
    )

}

#' A completely blank theme
#'
#' @return theme
#' @export
theme_empty<-function(){
  theme_minimal() +
    theme(
      panel.grid.major = element_blank(),
      panel.grid.minor = element_blank()
    )
}
