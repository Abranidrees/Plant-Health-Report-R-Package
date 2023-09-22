test_that("NDMI calculation works", {
  # Create a sample raster stack
  sentinel_image <- raster::stack(system.file("/Image/S2_image.tif", package = "PlantHealth"))

  # Specify the bands for near-infrared and short-wave infrared band

  nir_band <- 8
  swir_band <- 10
  # Call the NDMI function
  ndmi_result <- NDMI(sentinel_image, nir_band, swir_band)

  # Check if ndmi_result is a raster object
  expect_true(inherits(ndmi_result, "RasterLayer"))

})
