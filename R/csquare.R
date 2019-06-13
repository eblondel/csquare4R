#' csquare
#' @docType class
#' @export
#' @keywords csquare
#' @return Object of \code{\link{R6Class}} for modelling a csquare
#' @format \code{\link{R6Class}} object.
#' @section Methods:
#' \describe{
#'  \item{\code{new(str)}}{
#'    This method is used to instantiate an csquare
#'  }
#' }
#' 
#' @examples
#'   csq <- csquare$new()
#'   
#' 
#' @author Emmanuel Blondel <emmanuel.blondel1@@gmail.com>
#' 
csquare <- R6Class("csquare",
  inherit = csquareLogger,
  private = list(
    code = NULL,
    error = NULL,
    leading_digit = NULL,
    trailing_digit = NULL,
    start_lat = NULL,
    start_long = NULL,
    end_lat = NULL,
    end_long = NULL,
    tmp_sqr_size = NULL
  ),
  public = list(
    str = NULL,
    n_limit = NULL,
    s_limit = NULL,
    w_limit = NULL,
    e_limit = NULL,
    extent = NULL,
    
    initialize = function(str = NULL){
      if(!is.null(str)) self$str <- str
    },
    
    #isValid
    isValid = function(){
      stop("Not yet implemented")
    },
    
    #isValidReason
    isValidReason = function(){
      stop("Not yet implemented")
    },
    
    #getExtent
    getExtent = function(){
      stop("Not yet implemented")
    },
    
    #getCenter
    getCenter = function(){
      stop("Not yet implemented")
    },
    
    #toSpatialPolygon
    toSpatialPolygon = function(){
      stop("Not yet implemented")
    },
    
    #toSimpleFeatureGeometry
    toSimpleFeatureGeometry = function(){
      stop("Not yet implemented")
    },
    
    #decode
    decode = function(sfg = NULL, m = NULL){
      stop("Not yet implemented")
    }
    
    
  )
)


setAs("sfg", "c-square", function(from){
  csq <- csquare$new()
  csq$decode(sfg = from)
  return(csq)
})

setAs("csquare", "sfg", function(from){
  return(from$toSpatialFeatureGeometry())
})

