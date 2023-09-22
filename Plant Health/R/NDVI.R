#' Plant Health
#'
#' @param sentinel_image Character string representing the file name of the raster stack that contains the image data (sentinel stacked image)
#' @param red_band Integer, representing the band numbers to be used for the red band
#' @param nir_band Integer, representing the band numbers to be used for the nir band
#' @param output_path Optional character string, representing the file path where the calculated NDVI raster will be exported
#'
#' @return NDVI raster
#' @export
#'
NDVI <- function(sentinel_image, red_band, nir_band, output_path = NULL) {
  # Extracting the red and near-infrared bands
  red_band <- sentinel_image[[red_band]]
  nir_band <- sentinel_image[[nir_band]]

  # Calculating NDVI
  ndvi <- (nir_band - red_band) / (nir_band + red_band)

  if (!is.null(output_path)) {
    # Export the NDVI result to the specified output path
    raster::writeRaster(ndvi, filename = output_path, format = "GTiff", overwrite = TRUE)
  }

  return(ndvi)

}
