#' Plant water stress
#'
#' @param sentinel_image Character string representing the file name of the raster stack that contains the image data (sentinel stacked image)
#' @param nir_band Integer, representing the band numbers to be used for the nir band
#' @param swir_band Integer, representing the band numbers to be used for the swir band
#' @param output_path Optional character string, representing the file path where the calculated NDMI raster will be exported
#'
#' @return NDMI raster
#' @export
#'
NDMI <- function(sentinel_image, nir_band, swir_band, output_path = NULL) {
  # Extracting the near-infrared band and swir band
  nir_band <- sentinel_image[[nir_band]]
  swir_band <- sentinel_image[[swir_band]]

  # Calculating NDMI
  ndmi <- (nir_band - swir_band) / (nir_band + swir_band)

  if (!is.null(output_path)) {
    # Export the NDMI result to the specified output path
    raster::writeRaster(ndmi, filename = output_path, format = "GTiff", overwrite = TRUE)
  }

  return(ndmi)
}
