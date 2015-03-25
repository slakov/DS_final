library(shiny)

shinyServer(function(input, output) {
  
  if (nchar(input$text>1)){
    output$text <- renderText({
    paste("!!! ", nchar(input$text))
    
  })
  
  
  
  
})
