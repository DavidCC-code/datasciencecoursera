## READING DATA

# read.table, read.csv
# readlines
# source
# dget
# load
# unserialize


data <- read.table("datos/oleajePuertos.csv", header = TRUE, sep = ";", skip = 6)

#               Mes.Month Hs.Max..Max..Hs    Tp Dir Dia.Day Hora.Hour
# 1         Enero/January            6.97 12.11  78      20        18
# 2      Febrero/February            5.92 11.24  89       5         6
# 3           Marzo/March            5.09 10.10 102      21        19
# 4           Abril/April            4.35  9.26 115      18        12
# 5              Mayo/May            4.44  9.80  94       8         1
# 6            Junio/June            2.52  8.62  77       2        18
# 7            Julio/July            2.55  5.68 184       4        17
# 8         Agosto/August            1.66  6.49  96      29        22
# 9         Agosto/August            1.66  5.92 150      30        22
# 10        Agosto/August            1.66  6.49  96      29        23
# 11        Agosto/August            1.66  5.88 149      30        21
# 12 Septiembre/September            3.69  8.27  57      10        23
# 13      Octubre/October            5.18 10.10 120      11        17
# 14   Noviembre/November            4.54 10.64  82       8        12
# 15 Diciembre/Dececember            5.20 11.01  82       4        17

##READING LARGE TABLES
