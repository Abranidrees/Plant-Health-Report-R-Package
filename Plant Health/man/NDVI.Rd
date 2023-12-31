% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/NDVI.R
\name{NDVI}
\alias{NDVI}
\title{Plant Health}
\usage{
NDVI(sentinel_image, red_band, nir_band, output_path = NULL)
}
\arguments{
\item{sentinel_image}{Character string representing the file name of the raster stack that contains the image data (sentinel stacked image)}

\item{red_band}{Integer, representing the band numbers to be used for the red band}

\item{nir_band}{Integer, representing the band numbers to be used for the nir band}

\item{output_path}{Optional character string, representing the file path where the calculated NDVI raster will be exported}
}
\value{
NDVI raster
}
\description{
Plant Health
}
