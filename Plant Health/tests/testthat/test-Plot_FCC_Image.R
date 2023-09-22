test_that("Plotting FCC image works", {
  # Define sample arguments for the function (replace with actual values)
  image_file <- system.file("/Image/S2_image.tif", package = "PlantHealth")
  r_band <- 4
  g_band <- 3
  b_band <- 2

  # Call the Plot_FCC_Image function
  expect_silent(Plot_FCC_Image(image_file, r_band, g_band, b_band))
})
