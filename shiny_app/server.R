library(shiny)

shinyServer(function(input, output) {
  
  output$text <- renderText({
      paste("Next word guess: ", w(input$text))
      
  })
  
})


w <- function(iStr){
  out <- iStr
  n <- out
  
  if (n == "42") { out = "i love you, Belen !!!"}
  toupper(out)
  
}