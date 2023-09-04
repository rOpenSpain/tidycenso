#' Get data from the 2021 spanish census
#'
#' `get_censo` retrieves data from the 2021 spanish census through the API of the National Institute of Statistics. For more info on the available tables and variables visit https://www.ine.es/dyngs/DataLab/en/manual.html?cid=1259945952385.
#'
#' @param table  A string of length 1 with the table name to query data from.
#' @param variables A string with variable names of the queried table. If more than one, must be provided using c() (max. 4)
#' @param metrics A string with the units of measurement of the queried data. If more than one, must be provided concatenated using `c()`
#' @param language The language used in the body request (the only valid values are 'EN' or 'ES')
#'
#' @return A data.frame with the queried data
#' @export
#'
#' @examples
#' df <- get_censo("hog", c("ID_SUP_VIV", "ID_RESIDENCIA_N1"), "SHOGARES")
#'
#' @importFrom httr content
#' @importFrom httr POST
#' @importFrom httr content_type
#' @importFrom httr accept
#' @importFrom jsonlite fromJSON
#' @importFrom jsonlite toJSON
#' @importFrom jsonlite unbox
#'
get_censo <- function(table, variables, metrics, language = "ES") {

  BASEURL <- "https://www.ine.es/Censo2021/api"

  body <- list(
    idioma = unbox(language),
    metrica = metrics,
    tabla = unbox(table),
    variables = variables
  )

  body <- toJSON(body)

  response <- POST(
    BASEURL,
    body = body,
    content_type("application/json"),
    accept("application/json"),
    encode = "json"
  )

  if(response$status_code == 404) {
    stop("Error: 404")
  }

  content <- content(response, "text")
  content <- fromJSON(content)
  data <- content$data

  return(data)
}

