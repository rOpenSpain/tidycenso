# tidycenso

`tidycenso` is an R library for accesing the 2021 spanish census.

It's only function is `get_censo` and admits 4 parameter:

1.  tabla: A string of length 1 with the table name to query data from
2.  variables: A string with variable names of the queried table. If more than one, must be provided using c() (max. 4)
3. metricas: A string with the units of measurement of the queried data. If more than one, must be provided concatenated using 'c()'
4. idioma: The language used in the request body (the only valid values are 'EN' or 'ES')
