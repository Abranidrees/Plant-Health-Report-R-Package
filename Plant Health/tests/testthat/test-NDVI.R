test_that("NDVI calculation works", {
  # Create a sample raster stack (replace with actual raster stack)
  sentinel_image <- raster::stack(system.file("/Image/S2_image.tif", package = "PlantHealth"))

  # Specify the bands for red and near-infrared
  red_band <- 4
  nir_band <- 8

  # Call the NDVI function
  ndvi_result <- NDVI(sentinel_image, red_band, nir_band)

  # Check if ndvi_result is a raster object
  expect_true(inherits(ndvi_result, "RasterLayer"))

})
