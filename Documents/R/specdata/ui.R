shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("Annual Income Prediction"),
    
    sidebarPanel(
      numericInput('dailyincome', 'Daily Income $', 90, min = 1, max = 5000, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h3('Results of prediction'),
      h4('You entered'),
      verbatimTextOutput("inputValue"),
      h4('Which resulted in a prediction of '),
      verbatimTextOutput("prediction")
    )
  )
)