test_that("GCI calculation works", {
  # Create a sample raster stack
  sentinel_image <- raster::stack(system.file("/Image/S2_image.tif", package = "PlantHealth"))

  # Specify the bands for green and near-infrared band

  green_band <- 3
  nir_band <- 8
  # Call the GCI function
  gci_result <- GCI(sentinel_image, green_band, nir_band)

  # Check if gci_result is a raster object
  expect_true(inherits(gci_result, "RasterLayer"))

})
