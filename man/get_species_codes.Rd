% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_species_codes.R
\name{get_species_codes}
\alias{get_species_codes}
\title{Easily query the \code{gulf::species.names} for matches to a pattern}
\usage{
get_species_codes(pattern, field)
}
\arguments{
\item{pattern}{The pattern to search for. Case insensitive. Use "^" for "begins with", and "$" for "ends with". See examples.}

\item{field}{The field (column), in which to search for the pattern}
}
\description{
Easily query the \code{gulf::species.names} for matches to a pattern
}
\examples{
#library(gulf)
#get_species_codes('^snow crab','english')
#get_species_codes('^10$','code')
#get_species_codes('^130$','statac_code')
#get_species_codes('morue','french')
#get_species_codes('^morue','french')
}
