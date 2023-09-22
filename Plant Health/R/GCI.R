#' Plant stress
#'
#' @param sentinel_image Character string representing the file name of the raster stack that contains the image data (sentinel stacked image)
#' @param green_band Integer, representing the band numbers to be used for the green band
#' @param nir_band Integer, representing the band numbers to be used for the nir band
#' @param output_path Optional character string, representing the file path where the calculated GCI raster will be exported
#'
#' @return GCI raster
#' @export
#'
GCI <- function(sentinel_image, green_band, nir_band, output_path = NULL) {
  # Extracting the green band and nir band
  green_band <- sentinel_image[[green_band]]
  nir_band <- sentinel_image[[nir_band]]

  # Calculating GCI
  gci <- (green_band / nir_band) - 1

  if (!is.null(output_path)) {
    # Export the GCI result to the specified output path
    raster::writeRaster(gci, filename = output_path, format = "GTiff", overwrite = TRUE)
  }

  return(gci)
}
