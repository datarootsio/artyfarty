#' Add a watermark image
#'
#' @param filename the filename of the
#' @param x the x location of the watermark (0-1 scale)
#' @param y the y location of the watermark (0-1 scale)
#' @param width the width of the watermark image (in 'points')
#' @param location one of \code{tr} (top right), \code{tl} (top left), \code{bl} (bottom left), \code{br} (bottom right), \code{center} (view center)
#' @param ... arguments passed to \code{rasterGrob} (e.g. \code{alpha})
#'
#' @return a ggplot object
#' @export
watermark_img<-function(filename, x, y, width=32, location="br", ...){
  extra_gpar <- list(...)
  gpar <- grid::get.gpar()

  if(length(extra_gpar) > 0)
    gpar <- modifyList(gpar, extra_gpar)

  img <- readbitmap::read.bitmap(filename)

  if(all(missing(x), missing(y))){

    if(location == "tr"){
      y = .9
      x = .9
    } else if(location == "tl"){
      y = .9
      x = .1
    } else if(location == "bl"){
      y = .1
      x = .1
    } else if(location == "br"){
      y = .1
      x = .9
    } else if(location == "center"){
      y = .5
      x = .5
    }
  }

  wm_grob <- grid::rasterGrob(img, interpolate=TRUE, width=unit(width, "points"), y=y, x=x, gp=gpar)

  annotation_custom(wm_grob)


}


#' Add a watermark text
#'
#' @param txt the text to display
#' @param x the x location of the watermark (0-1 scale)
#' @param y the y location of the watermark (0-1 scale)
#' @param location one of \code{tr} (top right), \code{tl} (top left), \code{bl} (bottom left), \code{br} (bottom right), \code{center} (view center)
#' @param rot the rotation of the text
#' @param gpar \code{gpar} object passed to \code{rasterGrob}
#'
#' @return a ggplot object
#' @export
watermark_txt<-function(txt, x, y, location="br", rot=0, ...){
  extra_gpar <- list(...)
  gpar <- grid::get.gpar()

  if(length(extra_gpar) > 0)
    gpar <- modifyList(gpar, extra_gpar)

  if(all(missing(x), missing(y))){

    if(location == "tr"){
      y = .9
      x = .9
    } else if(location == "tl"){
      y = .9
      x = .1
    } else if(location == "bl"){
      y = .1
      x = .1
    } else if(location == "br"){
      y = .1
      x = .9
    } else if(location == "center"){
      y = .5
      x = .5
    }
  }


  wm_grob <- grid::textGrob(label = txt, y=y, x=x, rot=rot, gp=gpar)
  annotation_custom(wm_grob)

}
