#' Plotting Image in False Color Combination
#'
#' @param image_file Character string representing the file name of the raster stack that contains the image data.
#' @param r_band Integer, representing the band numbers to be used for the red
#' @param g_band Integer, representing the band numbers to be used for the green
#' @param b_band Integer, representing the band numbers to be used for the blue
#'
#' @return Plot the raster according to given band combinations
#' @export
#'
Plot_FCC_Image <- function(image_file, r_band, g_band, b_band) {
  # Load the raster stack
  raster_stack <- raster::stack(image_file)

  # Plot the FCC image
  raster::plotRGB(raster_stack, r = r_band, g = g_band, b = b_band, stretch = "lin")
}
