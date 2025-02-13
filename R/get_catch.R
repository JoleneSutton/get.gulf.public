#' Get species catch number and catch weight per tow from sGSL September surveys
#'
#' Uses set cards and length cards.
#' @param years Which year(s) to return. Current minimum to apply all corrections is 1993.
#' @param species Which RV species code. Currently limited to certain species if applying vessel and diel corrections (10,12,23,40,41,42,43,60,70).
#' @param adj.ratio Adjust for sampling ratio? Default is TRUE.
#' @param adj.distance Adjust for target tow distance? Default is TRUE.
#' @param adj.vessel Adjust for vessel effects? Default is TRUE.
#' @param adj.diel Adjust for diel effects? Default is TRUE. Note that diel adjustments are only made after vessel adjustments to Teleost.
#' @param experiment.code Restrict tow experiment type. See gulf::experiment.str(). Default is c(1,5) ("stratified random survey set", "comparative fishing experiment").
#' @param cutoff.length Include estimates below and above a cutoff length. Output columns labeled "small" are estimates below the cutoff length. Output columns labeled "big" are estimates at and above the cutoff length. Default is NULL
#' @returns A data frame
#' @seealso gulf::read.surveys(survey = "rv")), gulf::experiment.str()
#' @examples
#' #library(gulf)
#' #df<-get_catch(42,2022:2023)
#' #df<-get_catch(42,2000:2023)
#' @export
get_catch<-function(species,
                    years,
                    adj.ratio = TRUE,
                    adj.distance = TRUE,
                    adj.vessel = TRUE,
                    adj.diel = TRUE,
                    experiment.code = c(1,5),
                    cutoff.length = NULL){}
