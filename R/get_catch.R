#' Get species catch number and catch weight per tow from sGSL September surveys
#' 
#' Uses set cards and length cards.
#' @param years Which year(s) to return? Current minimum to apply all conversions is 2004.
#' @param species Which RV species code? Currently limited certain species if applying diel and vessel conversions (10,12,23,40,41,42,43,60,70).
#' @param adj.ratio Adjust for sampling ratio? Default is TRUE.
#' @param adj.distance Adjust for target tow distance? Default is TRUE.
#' @param adj.vessel Adjust for vessel effects? Default is TRUE.
#' @param adj.diel Adjust for diel effects? Default is TRUE. Note that diel adjustments are only made after vessel adjustments to Teleost.
#' @param experiment.code Restrict tow experiment type? See gulf::experiment.str(). Default is c(1,5) ("stratified random survey set", "comparative fishing experiment").
#' @param cutoff.length Include estimates below and above a cutoff length? Output columns labeled "small" are estimates below the cutoff length. Output columns labeled "big" are estimates at and above the cutoff length. Default is NULL
#' @param adj.repeat.sets Adjust for repeat sets? Identifies repeat sets (e.g., during comparative tows), and retains only the first set. First sets are retained in order to preserve tow information (e.g., spatial coordinates, depth), which is different from the `gulf` package's 'collapse.repeats' function. Experiment codes other than "1" and "5" will be removed when adjusting paired sets. See ?gulf::experiment.str() for details. Default is TRUE
#' @param pool.sexes Pool (combine) sexes in the final output? Default is TRUE.
#' @returns A data frame
#' @seealso gulf::read.surveys(survey = "rv")), gulf::experiment.str()
#' @examples
#' #library(gulf)
#' #df<-get_catch(42,2022:2023)
#' #df<-get_catch(42,1990:2023)
#' #df<-get_catch(42,2022:2023,pool.sexes = FALSE)
#' #df<-get_catch(42,2022:2023,pool.sexes = FALSE,cutoff.length=25)
#' @export
get_catch<-function(species,
                    years, 
                    adj.ratio = TRUE, 
                    adj.distance = TRUE, 
                    adj.vessel = TRUE,
                    adj.diel = TRUE,
                    experiment.code = c(1,5),
                    cutoff.length = NULL,
                    adj.repeat.sets = TRUE,
                    pool.sexes= TRUE){}
