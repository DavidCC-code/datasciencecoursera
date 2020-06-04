## CREATING VECTORS

x <- c(0.58, 0.6)    ## numeric
x <- c(TRUE, FALSE)  ## logical
x <- c(T, F)         ## logical
x <- c("a","b","c")  ## character
x <- 9:239           ## integer
x <- c(1+0i, 2+4i)   ## complex

## vector() function
x <- vector(mode = "numeric", length = 10)
x <- vector("numeric", length = 10)

x
#  [1] 0 0 0 0 0 0 0 0 0 0


## vector with diffent classes (data types), coercion to least common denominator

y <- c(1.7, "a")  ##coercion to character
#> [1] "1.7" "a"   

y <- c(TRUE, 2) ##coercion to numeric, TRUE becomes 1 FALSE would be 0
# [1] 1 2

y <- c(FALSE, "a") ## coercion to character
# [1] "FALSE" "a"    

##EXPLICIT COERCION

X <- 0:6
class(x)
# [1] "numeric"
x <- 0:6
as.numeric(x)
# [1] 0 1 2 3 4 5 6
as.logical(x)
# [1] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
as.character(x)
# [1] "0" "1" "2" "3" "4" "5" "6"

## nonsensical coercion returns NA (missing value)
x <- c("a","b","c")
as.numeric(x)
#  [1] NA NA NA
#  Warning message:
#  NAs introduced by coercion 

## LISTS 

x <- list(1,"a",TRUE,1+4i)  # elements of different classes
x
# [[1]]
# [1] 1
#
# [[2]]
# [1] "a"
#
# [[3]]
# [1] TRUE
#
# [[4]]
# [1] 1+4i

x <- list(1:10, 11:20,TRUE,1+4i)
# [[1]]
#  [1]  1  2  3  4  5  6  7  8  9 10
# 
# [[2]]
#  [1] 11 12 13 14 15 16 17 18 19 20
# 
# [[3]]
# [1] TRUE
# 
# [[4]]
# [1] 1+4i

## MATRICES

m <- matrix(nrow = 2, ncol = 3)
m
#      [,1] [,2] [,3]
# [1,]   NA   NA   NA
# [2,]   NA   NA   NA
dim(m)
# [1] 2 3
attributes(m)
# $dim
# [1] 2 3

m <- matrix(1:6, nrow = 2, ncol = 3)
m
#      [,1] [,2] [,3]            ## matrix created filled columnwise
# [1,]    1    3    5
# [2,]    2    4    6

## create matrices by binding vectors
x <- 1:3
y <- 10:12
cbind(x,y)
#    x  y
# [1,] 1 10
# [2,] 2 11
# [3,] 3 12
rbind(x,y)
#   [,1] [,2] [,3]
# x    1    2    3
# y   10   11   12
m <- rbind(x,y)
m
#   [,1] [,2] [,3]
# x    1    2    3
# y   10   11   12

## FACTORS  -  Caterogrical data (e.g. "Male","Female";"Intendente","Inspector"...)

x <- factor(c("yes","yes","no","yes","no"))
x
# [1] yes yes no  yes no 
# Levels: no yes

table(x)
# x
#  no yes 
#   2   3 

unclass(x)
# [1] 2 2 1 2 1
# attr(,"levels")
# [1] "no"  "yes"

x <- factor(c("yes","yes","no","yes","no"), levels = c("yes","no"))
x
# [1] yes yes no  yes no 
# Levels: yes no

unclass(x)
# [1] 1 1 2 1 2
# attr(,"levels")
# [1] "yes" "no" 

## MISSING VALUES
x <- c(1,2, NA, 10, 3)
is.na(x)
# [1] FALSE FALSE  TRUE FALSE FALSE

is.nan(x)
# [1] FALSE FALSE FALSE FALSE FALSE

x <- c(1,2, NA, NaN, 3)
is.na(x)
# [1] FALSE FALSE  TRUE  TRUE FALSE

is.nan(x)
# [1] FALSE FALSE FALSE  TRUE FALSE

x <- c(0/10,1/0,2,4,5)x
# [1]   0 Inf   2   4   5

is.infinite(x)
# [1] FALSE  TRUE FALSE FALSE FALSE

is.nan(x)
# [1] FALSE FALSE FALSE FALSE FALSE


## DATA FRAMES


x <- data.frame(foo = 1:4, bar = c(T,T,F,F))
x
#   foo   bar
# 1   1  TRUE
# 2   2  TRUE
# 3   3 FALSE
# 4   4 FALSE
  
nrow(x)
# [1] 4
ncol(x)
# [1] 2
