
# tidycenso

<!-- badges: start -->

[![R-CMD-check](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<!-- badges: end -->

## Overview

`tidycenso` is an R library for accessing the 2021 Spanish census API.

## Installation

``` r
devtools::install_github("ropenspain/tidycenso")
```

## Usage

`tidycenso` only has one function: `get_censo`. It admits 4 parameters:

1.  `table`: A string of length 1 with the table name to query data from
2.  `variables`: A string with variable names of the queried table. If
    more than one, must be provided using c() (max. 4)
3.  `metrics`: A string with the units of measurement of the queried
    data. If more than one, must be provided concatenated using `c()`
4.  `language`: The language used in the request body (the only valid
    values are ‘EN’ or ‘ES’)

The ids and descriptions of the available tables, variables and units of
measurement (metrics) are accessible through internal data objects named
`tables`, `variables`, and `metrics`.

## Example

``` r
df <- get_censo("hog", c("ID_SUP_VIV", "ID_RESIDENCIA_N1"), "SHOGARES")
head(df)
#>   SHOGARES        ID_RESIDENCIA_N1  ID_SUP_VIV
#> 1    25464               Andalucía Hasta 30 m2
#> 2     2586                  Aragón Hasta 30 m2
#> 3     3255 Asturias, Principado de Hasta 30 m2
#> 4     7683          Balears, Illes Hasta 30 m2
#> 5    11766                Canarias Hasta 30 m2
#> 6     1008               Cantabria Hasta 30 m2

tidycenso::tables
#>   id_tabla                                 descripcion_tabla_es
#> 1      hog                                              Hogares
#> 2      nuc                   Parejas y otros núcleos familiares
#> 3 per.estu Personas empadronadas en establecimientos colectivos
#> 4  per.ocu          Personas residentes en viviendas familiares
#> 5 per.ppal                                    Total de Personas
#> 6  viv.fam                                 Viviendas familiares
#> 7 viv.ppal                            Ocupados de 16 y más años
#>                       descripcion_tabla_en
#> 1                               Households
#> 2          Couples and other family nuclei
#> 3 Persons registered in collective housing
#> 4     Persons resident in family dwellings
#> 5                              All persons
#> 6                                Dwellings
#> 7  Employed persons aged 16 years and over
```
