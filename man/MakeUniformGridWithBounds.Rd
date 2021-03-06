% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/SkeletonCode.R
\name{MakeUniformGridWithBounds}
\alias{MakeUniformGridWithBounds}
\title{Create a matrix where suitability of each cell is the same, but with bounds at the margins}
\usage{
MakeUniformGridWithBounds(nrow = 10, ncol = 10)
}
\arguments{
\item{nrow}{The number of total rows (including the boundary rows)}

\item{ncol}{The number of total columns (including the boundary columns)}
}
\value{
A matrix with all ones except the top and bottom rows and left and right columns, which are zero.
}
\description{
Create a matrix where suitability of each cell is the same, but with bounds at the margins
}

