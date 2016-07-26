# ----------------------------------------------------------------------
# Server code for application MileagePredictor
# ----------------------------------------------------------------------

library(shiny)

mpgPredictor = lm(mpg ~ wt + hp, data = mtcars)

mileagePrediction <- function(wt, hp) {
    newData = data.frame(wt = wt, hp = hp)
    predict(mpgPredictor, newData)
}


shinyServer(function(input, output) {
    
    output$prediction <- renderPrint({mileagePrediction(input$wt, input$hp)})
   
})
