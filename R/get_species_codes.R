#' Easily query the `gulf::species.names` for matches to a pattern
#'
#' @param pattern The pattern to search for. Case insensitive. Use "^" for "begins with", and "$" for "ends with". See examples.
#' @param field The field (column), in which to search for the pattern
#' @examples
#' #library(gulf)
#' #get_species_codes('^snow crab','english')
#' #get_species_codes('^10$','code')
#' #get_species_codes('^130$','statac_code')
#' #get_species_codes('morue','french')
#' #get_species_codes('^morue','french')
#' @export
get_species_codes<-function(pattern,field){}
