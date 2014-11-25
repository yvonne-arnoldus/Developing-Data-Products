Earthquakes Data
========================================================
author: Yvonne Arnoldus
date: November 25th, 2014

## Plotting epi centrum of earthquakes on a map

Data
========================================================

## The application uses data collect form earthquakes


```r
eq <- read.csv("earthquakes.csv")
summary(eq[, c(1,3,4)])
```

```
   Magnitude        Latitude        Longitude      
 Min.   :2.500   Min.   :-55.95   Min.   :-179.99  
 1st Qu.:2.800   1st Qu.: 14.25   1st Qu.:-117.97  
 Median :3.200   Median : 19.54   Median : -65.77  
 Mean   :3.575   Mean   : 23.49   Mean   : -46.51  
 3rd Qu.:4.500   3rd Qu.: 39.91   3rd Qu.: -30.98  
 Max.   :5.700   Max.   : 72.47   Max.   : 179.24  
```

How to use
========================================================

## Within the App you can change the following parameters to determent which earthquakes to show:

* Magnitude
* Latitude
* Longitude


Applications
========================================================

## This application is easy to use can thus be used in elementry earth sciences classes. So the childern can learn about were on earth more earthquakes occure.

Future
========================================================

## The next version of this app will have support to change input data and zoom in on the map
