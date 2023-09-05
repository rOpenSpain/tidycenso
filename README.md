# tidycenso

<!-- badges: start -->

[![R-CMD-check](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<!-- badges: end -->

## Overview

`tidycenso` is an R library for accessing the 2021 Spanish census API.

## Installation

```         
devtools::install_github("hmeleiro/tidycenso")
```

## Usage

`tidycenso` only has one function: `get_censo`. It admits 4 parameters:

1.  `table`: A string of length 1 with the table name to query data from
2.  `variables`: A string with variable names of the queried table. If more than one, must be provided using c() (max. 4)
3.  `metrics`: A string with the units of measurement of the queried data. If more than one, must be provided concatenated using 'c()'
4.  `language`: The language used in the request body (the only valid values are 'EN' or 'ES')

The ids and descriptions of the available tables, variables and units of measurement (metrics) are accessible through internal data objects named `tables`, `variables`, and `metrics`.

## Example

```         
df <- get_censo("hog", c("ID_SUP_VIV", "ID_RESIDENCIA_N1"), "SHOGARES")
head(df)

#>   SHOGARES        ID_RESIDENCIA_N1  ID_SUP_VIV
#> 1    25464               Andalucía Hasta 30 m2
#> 2     2586                  Aragón Hasta 30 m2
#> 3     3252 Asturias, Principado de Hasta 30 m2
#> 4     7686          Balears, Illes Hasta 30 m2
#> 5    11766                Canarias Hasta 30 m2
#> 6     1005               Cantabria Hasta 30 m2

        
tidycenso::tables

#> # A tibble: 7 x 3
#>   id_tabla descripcion_tabla_es                        descripcion_tabla_en
#>   <chr>    <chr>                                       <chr>               
#> 1 hog      Hogares                                     Households          
#> 2 nuc      Parejas y otros núcleos familiares          Couples and other f~
#> 3 per.estu Personas empadronadas en establecimientos ~ Persons registered ~
#> 4 per.ocu  Personas residentes en viviendas familiares Persons resident in~
#> 5 per.ppal Total de Personas                           All persons         
#> 6 viv.fam  Viviendas familiares                        Dwellings           
#> 7 viv.ppal Ocupados de 16 y más años                   Employed persons ag~
```
