library(shiny)
library(miniUI)

testGadget <- function() {
  ui <- miniPage(
    gadgetTitleBar("Testing Shiny Gadget"),
    miniContentPanel(
      selectInput("color", "Select colors", colors()),
      textOutput("text")
    )
  )
  server <- function(input, output, session) {
    output$text <- renderText({
      paste0("The selected colour is ", input$color)
    })
  }
  runGadget(ui, server, viewer = dialogViewer("Shiny Gadget"))
}