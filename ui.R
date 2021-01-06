library(shiny)
library(ggplot2)


shinyUI(fluidPage(
  titlePanel("Adam"),
  
    sidebarPanel(
      textInput("symbol", "Enter stock ticker symbol:", value = ""),
      actionButton("addTicker","Add Ticker"),
      selectizeInput("symbolList","Tickers:",NULL,NULL,TRUE),
      
    ),
  
    mainPanel(dataTableOutput('eftablestockList'))

    )
)