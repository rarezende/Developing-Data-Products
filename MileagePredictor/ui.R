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
        submitButton('Submit'),
        p(""),
        p(paste('This simple application predicts what will be the fuel consumption of a car',
                'based on its weight and gross horsepower. The prediction is based on a linear',
                'regression model fitted using the mtcars dataset from R. The model is fitted to',
                'explain the mpg (miles/gallon) variable using the wt (weight) and the hp (horsepower)',
                'variables (mpg ~ wt + hp). To get a prediction, simply type the weight and the',
                'horsepower of the car in the indicated input boxes above and hit the Submit button.'))
        
    ),
    mainPanel(
        h3('The predicted fuel consumption (miles per gallon) for the car is:'),
        verbatimTextOutput("prediction")
    )
))
