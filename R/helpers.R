#' Font selector, internal helper function
#'
#' Will return the first available font
#'
#' @param ... list of fonts requested
#' @export
fonts_selector <- function(...) {
  req_fonts <- unlist(list(...))
  available <- intersect(req_fonts, names(grDevices::postscriptFonts()))
  if(length(available) == 0)
    stop("Non of the requested font were found: ", req_fonts)

  available[1]
}
