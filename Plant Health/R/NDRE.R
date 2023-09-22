#' Nitrogen Content Map
#'
#' @param sentinel_image character string representing the file name of the raster stack that contains the image data (sentinel stacked image)
#' @param nir_band integer, representing the band numbers to be used for the nir band
#' @param rededge_band integer, representing the band numbers to be used for the red edge band
#' @param output_path optional character string, representing the file path where the calculated NDRE raster will be exported
#'
#' @return NDRE raster
#' @export
#'
NDRE <- function(sentinel_image, nir_band, rededge_band, output_path = NULL) {
  # Extracting the nir band and rededge band
  nir_band <- sentinel_image[[nir_band]]
  rededge_band <- sentinel_image[[rededge_band]]

  # Calculating NDRE
  ndre <- (nir_band - rededge_band) / (nir_band + rededge_band)

  if (!is.null(output_path)) {
    # Export the NDVE result to the specified output path
    raster::writeRaster(ndre, filename = output_path, format = "GTiff", overwrite = TRUE)
  }

  return(ndre)
}
