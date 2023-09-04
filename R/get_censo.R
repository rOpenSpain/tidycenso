#' Get data from the 2021 spanish census
#'
#' `get_censo` retrieves data from the 2021 spanish census through the API of the National Institute of Statistics. For more info on the available tables and variables visit https://www.ine.es/dyngs/DataLab/en/manual.html?cid=1259945952385.
#'
#' @param tabla Name of the table to query data from.
#' @param variables The variable names of the queried table (max. 4)
#' @param metricas The units of measurement of the queried data.
#' @param idioma The language used in the request body (the only valid values are 'EN' or 'ES')
#'
#' @return A data.frame with the queried data
#' @export
#'
#' @importFrom httr content
#' @importFrom httr POST
#' @importFrom httr content_type
#' @importFrom httr accept
#' @importFrom jsonlite fromJSON
#' @importFrom jsonlite toJSON
#' @importFrom jsonlite unbox
#'
get_censo <- function(tabla, variables, metricas, idioma = "ES") {

  BASEURL <- "https://www.ine.es/Censo2021/api"

  body <- list(
    idioma = unbox(idioma),
    metrica = metricas,
    tabla = unbox(tabla),
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
