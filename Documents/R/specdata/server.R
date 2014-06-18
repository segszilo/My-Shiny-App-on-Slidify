annualIncome <- function(dailyincome) dailyincome * 261

shinyServer(
  function(input, output) {
    output$inputValue <- renderPrint({input$dailyincome})
    output$prediction <- renderPrint({annualIncome(input$dailyincome)})
  }
)