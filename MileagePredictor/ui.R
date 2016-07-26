# ----------------------------------------------------------------------
# User interface code for application MileagePredictor
# ----------------------------------------------------------------------

library(shiny)

shinyUI(pageWithSidebar(
    # Application title
    headerPanel("Mileage prediction"),
    
    sidebarPanel(
        numericInput('wt', 'Car Weight (1000 lbs)', 3, min = 1, max = 10, step = 0.1),
        numericInput('hp', 'Car Gross Horsepower (hp)', 125, min = 40, max = 400, step = 10),
        submitButton('Submit')
    ),
    mainPanel(
        h3('The predicted mileage for the car is:'),
        verbatimTextOutput("prediction")
    )
))
