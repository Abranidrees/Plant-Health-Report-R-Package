test_that("Image loading works", {
  # Define a sample image file path (replace with an actual image file path)
  file_path <- system.file("/Image/S2_image.tif", package = "PlantHealth")

  # Call the load_image function
  loaded_stack <- load_image(file_path)

  # Check if the loaded stack is a raster stack
  expect_true(inherits(loaded_stack, "RasterStack"))

})
