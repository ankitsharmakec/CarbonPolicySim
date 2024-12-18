#' Facility Class
#'
#' A class to represent a facility with attributes like name, sector, location, and MACC data.
#'
#' @slot Name A string representing the name of the facility.
#' @slot Sector A string representing the sector (e.g., Steel, Cement).
#' @slot Location A string representing the city where the facility is located.
#' @slot Location_Lat_Long A data frame containing Latitude and Longitude of the location.
#' @slot Size A numeric value representing the size of the facility.
#' @slot Baseline_CO2_Intensity A numeric value representing baseline CO2 intensity (tCO2/tOutput).
#' @slot Target_Intensity A numeric value representing target CO2 intensity (tCO2/tOutput).
#' @slot MACC A data frame with two columns: CO2 price and Abatement Potential.
#' @importFrom methods new slotNames "slot<-"
#' @export
setClass(
  "Facility",
  representation = representation(
    Name = "character",
    Sector = "character",
    Location = "character",
    Location_Lat_Long = "data.frame",
    Size = "numeric",
    Baseline_CO2_Intensity = "numeric",
    Target_Intensity = "numeric",
    MACC = "data.frame"
  )
)

#' Facility Constructor
#'
#' Create a new Facility object.
#'
#' @param Name A string representing the name of the facility.
#' @param Sector A string representing the sector (e.g., Steel, Cement).
#' @param Location A string representing the city where the facility is located.
#' @param Location_Lat_Long A data frame containing Latitude and Longitude of the location.
#' @param Size A numeric value representing the size of the facility.
#' @param Baseline_CO2_Intensity A numeric value representing baseline CO2 intensity (tCO2/tOutput).
#' @param Target_Intensity A numeric value representing target CO2 intensity (tCO2/tOutput).
#' @param MACC A data frame with two columns: CO2 price and Abatement Potential.
#' @return A Facility object.
#' @examples
#' location_df <- data.frame(Latitude = 29.9457, Longitude = 78.1642)
#' macc_df <- data.frame(abatement_cost = c(10, 20, 30, 40), Abatement_Potential = c(5, 10, 15, 20))
#' facility <- NewFacility(
#'   Name = "Steel Plant A",
#'   Sector = "Steel",
#'   Location = "Roorkee",
#'   Location_Lat_Long = location_df,
#'   Size = 1.5,
#'   Baseline_CO2_Intensity = 2.5,
#'   Target_Intensity = 1.8,
#'   MACC = macc_df
#' )
#' @export
NewFacility <- function(Name, Sector, Location, Location_Lat_Long, Size,
                     Baseline_CO2_Intensity, Target_Intensity, MACC) {
  new("Facility",
      Name = Name,
      Sector = Sector,
      Location = Location,
      Location_Lat_Long = Location_Lat_Long,
      Size = Size,
      Baseline_CO2_Intensity = Baseline_CO2_Intensity,
      Target_Intensity = Target_Intensity,
      MACC = MACC
  )
}

