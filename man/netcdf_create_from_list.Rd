% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/util_nc_create_from_list.R
\name{netcdf_create_from_list}
\alias{netcdf_create_from_list}
\title{Create NetCDF File from R list}
\usage{
netcdf_create_from_list(filename, variables, time_dim, coord_dim,
  value_column = "value", guess_time = FALSE, guess_coord = FALSE,
  verbose)
}
\arguments{
\item{filename}{a path to a NetCDF file to write the variable into, which will be overwritten
if it already exists.}

\item{variables}{a \code{list}}

\item{time_dim}{the name of the time dimension, if one exists}

\item{coord_dim}{the name of the coordinate dimension,  if one exists}

\item{value_column}{if any \code{variables} are data frames, which column contains the values (default: "value")}

\item{guess_time}{whether to guess time dimension; this would be a numerical column in the data frame given which is not the \code{value_column}; only one such column must exist}

\item{guess_coord}{whether to guess the coordinate dimension; this would be a column with varying value which is not the time or value column}

\item{verbose}{if TRUE, will print variables as they are read}
}
\value{
A list of factors in extra dimensions, if any
}
\description{
Internal function that creates a NetCDF file given a list.
}
\details{
The list of variables must follow the following rules. Each element
of the list must itself be one of:

1) a data frame with a \code{value_column} column (see option 'value_column') and any number of other
columns indicating one or more dimensions

2) a numeric vector of length one, with no dimensions

The name of the list elements itself is used to create the
corresponding variable in the NetCDF file.
}
\note{
Two elements of the given list can possibly have the same
  dimension name.
}

