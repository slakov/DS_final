library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  titlePanel("Next word prdiction example"),
  
  textInput("text", "Text:", ""),
  
  tags$br(),
  submitButton("Submit"),
  
  tags$br(),
  verbatimTextOutput("text")
  
  
))
