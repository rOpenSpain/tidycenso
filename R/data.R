#' Available tables
#'
#' A list of the available tables in the spanish 2021 Census API
#' @name tablas
#' @format A data frame with 7 rows and 3 columns:
#' \describe{
#'   \item{id_tabla}{Table ID}
#'   \item{descripcion_tabla_es, descripcion_tabla_en}{Content description of the table in spanish and english}
#' }
#' @source <https://www.ine.es/censos2021/SDC21_tablas_disponibles.xlsx>
"tablas"
#' Available variables
#'
#' A list of the available variables in the spanish 2021 Census API
#' @name variables
#' @format A data frame with 395 rows and 4 columns:
#' \describe{
#'   \item{id_tabla}{Table ID}
#'   \item{id_variable}{Variable ID}
#'   \item{descripcion_variable_es, descripcion_variable_en}{Content description of the variable in spanish and english}
#' }
#' @source <https://www.ine.es/censos2021/SDC21_variables_disponibles.xlsx>
"variables"
#' Available units of measurement
#'
#' A list of the available units of measurement in the spanish 2021 Census API
#'
#' @name metricas
#' @format A data frame with 51 rows and 4 columns:
#' \describe{
#'   \item{id_tabla}{Table ID}
#'   \item{id_unidad_de_medida}{unit ID}
#'   \item{descripcion_unidad_de_medida_es, descripcion_unidad_de_medida_en}{Content description of the unit of measurement in spanish and english}
#' }
#' @source <https://www.ine.es/censos2021/SDC21_variables_disponibles.xlsx>
"metricas"
