# tidycenso

<!-- badges: start -->

[![R-CMD-check](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/hmeleiro/tidycenso/actions/workflows/R-CMD-check.yaml) [![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

<!-- badges: end -->

`tidycenso` is an R library for accesing the 2021 spanish census.

It's only function `get_censo` admits 4 parameters:

1.  table: A string of length 1 with the table name to query data from
2.  variables: A string with variable names of the queried table. If more than one, must be provided using c() (max. 4)
3.  metrics: A string with the units of measurement of the queried data. If more than one, must be provided concatenated using 'c()'
4.  language: The language used in the request body (the only valid values are 'EN' or 'ES')
