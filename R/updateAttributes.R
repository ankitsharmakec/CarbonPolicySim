#' updateAttributes Function
#'
#' A function to update the attributes of a given object.
#'
#' @param object The object to update.
#' @param ... Named arguments representing the attributes to update.
#' @return The updated object.
#' @examples
#' # Create a facility object
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
#'
#' # Update the facility's size and target CO2 intensity
#' updated_facility <- updateAttributes(facility, Size = 2.0, Target_Intensity = 1.5)
#' @export
updateAttributes <- function(object, ...) {
  # Capture the arguments passed to the function
  new_values <- list(...)

  # Get the class of the object
  object_class <- class(object)

  # Loop through each argument passed for updating
  for (attr_name in names(new_values)) {
    # Check if the attribute exists in the object
    if (attr_name %in% slotNames(object)) {
      # Update the attribute value
      slot(object, attr_name) <- new_values[[attr_name]]
    } else {
      warning(paste("Attribute", attr_name, "does not exist in the object."))
    }
  }

  return(object)
}
