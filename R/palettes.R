PALETTES <- (function(filename){
  pals <- jsonlite::fromJSON(filename)
  for(p_name in names(pals)){
    pals[[p_name]]$name <- p_name
    pals[[p_name]]$size <- length(pals[[p_name]]$colors)
  }
  pals
})(system.file("extdata", "palettes.json", package = "artyfarty"))


#' Show details of specific palette
#'
#' @param palette_name the name of the palette
#'
#' @export
#' @examples
#' palette_info('flatpaleta')
palette_info <- function(palette_name){
  if(!palette_name %in% names(PALETTES))
    stop(paste0("Requested palette '", palette_name, "' not found in artyfarty library"))

  PALETTES[[palette_name]]
}

#' List all available palettes
#'
#' @export
list_palettes <- function(){
  cat("Available artyfarty palettes:\n")
  cat("----------------------------\n")
  for(p in names(PALETTES)){
    cat(p, "\n")
  }

  invisible(PALETTES)
}

#' Load a palette in hex definition
#'
#' See the available palettes using \code{list_palettes}.
#' \code{pal} will also search for the palette name in \code{RColorBrewer} and return it if found.
#'
#' @param palette_name the palette's name
#' @param n the number of colors to return, will default to the actual size of the palette, will recycle when necessary
#' @param evenly_spaced if \code{TRUE}, when the pallete has e.g. 5 colors but only 3 are requested, color 1, 3, and 5 will be returned.
#'
#' @return a character vector of hex colors
#' @export
pal <- function(palette_name, n=NULL, evenly_spaced=TRUE){
  if(palette_name %in% rownames(RColorBrewer::brewer.pal.info)){
    p <- RColorBrewer::brewer.pal(
      RColorBrewer::brewer.pal.info[rownames(RColorBrewer::brewer.pal.info) == palette_name, "maxcolors"],
      palette_name)

    return(p)
  }

  if(!palette_name %in% names(PALETTES))
    stop(paste0("Requested palette '", palette_name, "' not found"))

  p<-PALETTES[[palette_name]]$colors


  if(!is.null(n)){
    if(evenly_spaced & n < length(p)){
      p<-p[round(seq.int(1, length(p), length.out = n))]
    } else {
      p<-rep(p, length.out = n)
    }
  }

  p
}

#' Plot available palettes
#'
#' @return ggplot2 object
#' @export
plot_palettes<-function(){

  all_cols<-
    sapply(PALETTES, function(p) {
      c(p$name, p$colors)
    })

  max_cols <- max(sapply(all_cols, function(p) length(p)))
  m <- matrix(nrow=NROW(all_cols), ncol=max_cols)

  for(i in 1:NROW(all_cols)){
    m[i,] <- c(all_cols[[i]], rep(NA, max_cols - (length(all_cols[[i]]))))
  }

  colnames(m) <-
    c("name", sapply(1:(NCOL(m) - 1), function(i) i))

  df<-
    tidyr::gather(
      as.data.frame(m, stringsAsFactors=FALSE),
      k, col, 2:NCOL(m))

  df<-
    dplyr::mutate(df, k = as.numeric(k))

  col <- df$col
  names(col) <- col


  ggplot(df) +
    aes(x=as.factor(k), y=name, fill=col) +
    geom_tile() +
    scale_fill_manual(values=col) +
    theme_bw() +
    labs(x="color",
         y="palette_name",
         title="Available palettes") +
    theme_farty() +
    theme(legend.position="none")

}
