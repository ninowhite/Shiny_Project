library(shiny)
shinyServer(
         function(input, output) {
                 output$oid1 <- renderPrint({input$id1})
                 output$id2 <- renderPrint({input$id2})
                 output$id3 <- renderPrint({input$id3})
                 output$id4 <- renderPrint({
                   input$goButton
                   isolate(as.numeric(input$id2)*703/(as.numeric(input$id3)*as.numeric(input$id3)))})     
          }
)
