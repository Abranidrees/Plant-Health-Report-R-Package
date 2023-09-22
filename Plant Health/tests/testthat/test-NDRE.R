test_that("NDRE calculation works", {
  # Create a sample raster stack
  sentinel_image <- raster::stack(system.file("/Image/S2_image.tif", package = "PlantHealth"))

  #Specify the band numbers for near-infrared and rededge band
  nir_band <- 8
  rededge_band <- 5
  # Call the NDRE function
  ndre_result <- NDRE(sentinel_image, nir_band, rededge_band)

  # Check if ndre_result is a raster object
  expect_true(inherits(ndre_result, "RasterLayer"))

})
