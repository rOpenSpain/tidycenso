library(dplyr)

tables <- readxl::read_xlsx("data-raw/SDC21_tablas_disponibles.xlsx") %>%
  janitor::clean_names()
usethis::use_data(tables, overwrite = T)

variables <- readxl::read_xlsx("data-raw/SDC21_variables_disponibles.xlsx") %>%
  janitor::clean_names()
usethis::use_data(variables, overwrite = T)

metrics <- readxl::read_xlsx("data-raw/SDC21_unidades_medida_disponibles.xlsx") %>%
  janitor::clean_names()
usethis::use_data(metrics, overwrite = T)
