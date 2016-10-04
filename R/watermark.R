#' Add a watermark image
#'
#' @param filename the filename of the
#' @param x the x location of the watermark (0-1 scale)
#' @param y the y location of the watermark (0-1 scale)
#' @param width the width of the watermark image (in 'points')
#' @param location one of \code{tr} (top right), \code{tl} (top left), \code{bl} (bottom left), \code{br} (bottom right), \code{center} (view center)
#' @param alpha transparency value
#' @param ... arguments passed to \code{rasterGrob}
#'
#' @return a ggplot object
#' @export
watermark_img<-function(filename, x, y, width=32, location="br", alpha = 1, ...){

  img <- readbitmap::read.bitmap(filename)
  img_ratio <- dim(img)[2] / dim(img)[1]

  img_alpha <- matrix(rgb(img[,,1],img[,,2],img[,,3], img[,,4] * alpha), nrow=dim(img)[1])

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

  wm_grob <- grid::rasterGrob(img_alpha, interpolate=TRUE, width=unit(width, "points"), y=y, x=x, ...)

  annotation_custom(wm_grob)


}


#' Add a watermark text
#'
#' @param txt the text to display
#' @param x the x location of the watermark (0-1 scale)
#' @param y the y location of the watermark (0-1 scale)
#' @param location one of \code{tr} (top right), \code{tl} (top left), \code{bl} (bottom left), \code{br} (bottom right), \code{center} (view center)
#' @param alpha transparency value
#' @param gpar \code{gpar} object passed to \code{rasterGrob}
#'
#' @return a ggplot object
#' @export
watermark_txt<-function(txt, x, y, location="br", gpar=grid::gpar()){

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


  wm_grob <- grid::textGrob(label = txt, y=y, x=x, gpar)
  annotation_custom(wm_grob)

}
