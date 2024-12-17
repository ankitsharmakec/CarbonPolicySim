# Load required library
library(R6)

#' Facility Class
#'
#' A class to represent a facility with attributes like name, sector, location, and MACC data.
#'
#' @field Name A string representing the name of the facility.
#' @field Sector A string representing the sector (e.g., Steel, Cement).
#' @field Location A string representing the city where the facility is located.
#' @field Location_Lat_Long A dataframe containing Latitude and Longitude of the location.
#' @field Size A float representing the size of the facility.
#' @field Baseline_CO2_Intensity A float representing baseline CO2 intensity (tCO2/tOutput).
#' @field Target_Intensity A float representing target CO2 intensity (tCO2/tOutput).
#' @field MACC A dataframe with two columns: CO2 price and Abatement Potential.
#' @export
Facility <- R6Class("Facility",
                    public = list(
                      # Attributes
                      Name = NULL,
                      Sector = NULL,
                      Location = NULL,
                      Location_Lat_Long = NULL,
                      Size = NULL,
                      Baseline_CO2_Intensity = NULL,
                      Target_Intensity = NULL,
                      MACC = NULL,

                      # Constructor
                      #' @description
                      #' Create a new Facility object.
                      #' @param Name A string representing the name of the facility.
                      #' @param Sector A string representing the sector (e.g., Steel, Cement).
                      #' @param Location A string representing the city where the facility is located.
                      #' @param Location_Lat_Long A dataframe containing Latitude and Longitude of the location.
                      #' @param Size A float representing the size of the facility.
                      #' @param Baseline_CO2_Intensity A float representing baseline CO2 intensity (tCO2/tOutput).
                      #' @param Target_Intensity A float representing target CO2 intensity (tCO2/tOutput).
                      #' @param MACC A dataframe with two columns: CO2 price and Abatement Potential.
                      initialize = function(Name, Sector, Location, Location_Lat_Long, Size,
                                            Baseline_CO2_Intensity, Target_Intensity, MACC) {
                        self$Name <- Name
                        self$Sector <- Sector
                        self$Location <- Location
                        self$Location_Lat_Long <- Location_Lat_Long
                        self$Size <- Size
                        self$Baseline_CO2_Intensity <- Baseline_CO2_Intensity
                        self$Target_Intensity <- Target_Intensity
                        self$MACC <- MACC
                      },

                      # Method to display details
                      #' @description
                      #' Print the details of the Facility object, including MACC data.
                      print_details = function() {
                        cat("Facility Details:\n")
                        cat("Name:", self$Name, "\n")
                        cat("Sector:", self$Sector, "\n")
                        cat("Location:", self$Location, "\n")
                        cat("Size:", self$Size, "\n")
                        cat("Baseline CO2 Intensity (tCO2/tOutput):", self$Baseline_CO2_Intensity, "\n")
                        cat("Target Intensity (tCO2/tOutput):", self$Target_Intensity, "\n")
                        cat("MACC:\n")
                        print(self$MACC)
                      }
                    )
)

# Example usage
#' @examples
#' location_df <- data.frame(Latitude = 29.9457, Longitude = 78.1642)
#' macc_df <- data.frame(CO2_price = c(10, 20, 30, 40), Abatement_Potential = c(5, 10, 15, 20))
#' facility_1 <- Facility$new(
#'   Name = "Steel Plant A",
#'   Sector = "Steel",
#'   Location = "Roorkee",
#'   Location_Lat_Long = location_df,
#'   Size = 1.5,
#'   Baseline_CO2_Intensity = 2.5,
#'   Target_Intensity = 1.8,
#'   MACC = macc_df
#' )
#' facility_1$print_details()
