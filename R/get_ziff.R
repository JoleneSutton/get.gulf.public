#' Return raw commercial landings data from a ZIFF (Zonal Interchange Format File)
#'
#' Retrieves data housed at DFO Quebec Region
#'
#' @param years Which year(s) to return.
#' @param nafo Which NAFO division(s). Case insensitive.
#' @param species.caught STATAC species code.
#' @param species.sought STATAC species code.
#' @param headers Should returned data frame column names (headers) be in English or French. Default is English.
#' @returns A data frame
#' @examples
#' #df<-get_ziff(2020,c('4r','4s'),100,100)
#' @export
get_ziff<-function(years,
                   nafo=NULL,
                   species.caught=NULL,
                   species.sought=NULL,
                   headers='english'){}
