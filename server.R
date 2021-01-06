library(shiny)
require(quantmod)
source("EfficientFrontierCalculator.R")

stockList <- "AAPL"

shinyServer(function(input, output, session) {
  observe({
  updateSelectizeInput(
    session,
    "symbolList",
    choices=c(input$symbolList,input$symbol),
    selected=c(input$symbolList,input$symbol))
  })
})