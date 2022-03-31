
library(shiny)
library(miniUI)
library(shinyWidgets)

gadgetDemo <- function() {
  ui <- miniPage(
    gadgetTitleBar("Testing Shiny Gadget"),
    miniContentPanel(scrollable = T, padding = 0,
      fillCol(
        fillRow(
          colourInput("color", "Pick Color"),
          textOutput("color")
        )
      )
    )
  )
  
  server <- function(input, output, session) {
    output$color <- renderText({
      paste("The selected color is", input$color)
    })
    observeEvent(input$done, {
      stopApp("App Closed!")
    })
    observeEvent(input$cancel, {
      stopApp("App Closed!")
    })
  }
  
  runGadget(ui, server, viewer = dialogViewer("Shiny Gadget", 900, 900), stopOnCancel = FALSE)
}






















