#' Load Image
#'
#' @param file_path The path to the image file
#'
#' @return A raster stack representing the loaded image
#' @export
#'

load_image <- function(file_path) {
  # Load the raster stack
  raster_stack <- raster::stack(file_path)

  return(raster_stack)
}
