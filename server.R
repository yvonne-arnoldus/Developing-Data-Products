
# This is the server logic for a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)
library (ggplot2)
library (maps)
library (maptools)

shinyServer(function(input, output) {
     
  output$map <- renderPlot({
      
      # Reading data of earthquakes.
      eq <- read.csv("earthquakes.csv")
      
      data <- subset(eq, Magnitude >= input$magna[1] & Magnitude <= input$magna[2] & Longitude >= input$long[1] & Longitude <= input$long[2] & Latitude >= input$lat[1] & Latitude <= input$lat[2])
      
      # create world map
      mapWorld <- borders("world", colour="gray50", fill="gray50") # create a layer of borders
      
      # plot world map
      mp <- ggplot(data) + mapWorld
      
      # plot points
      if ( nrow(data) > 0) {
        mp <- mp + geom_point(aes(x=Longitude, y=Latitude, size = Magnitude, colour = Magnitude), alpha = 1/2)
      }
      
      # return
      mp
  })
  
})
