library(shiny)

shinyServer(function(input, output) {
  
  output$text <- renderText({
      paste("!!! ", w(input$text))
      
  })
  
})


w <- function(iStr){
  out <- iStr
  n <- out
  
  if (n == "42") { out = "Cosa"}
  toupper(out)
  
}