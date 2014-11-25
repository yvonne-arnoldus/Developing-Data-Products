
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
  
  # Application title
  headerPanel("Earthquakes Data"),
  
  # Sidebar
  sidebarPanel(
      sliderInput("lat", "Latitude:", min = -55.0,  max = 73.0, value = c(-55.0,73.0)),   
      sliderInput("long", "Longitude:", min = -179.0, max = 179.0, value = c(-179.0,179.0)),
      sliderInput("magna", "Choose a magnatude:",  min = 2.5, max = 5.7, value = c(2.5,5.7) )
  ),
  
  # Show
  mainPanel(
    plotOutput("map")
  )
))
