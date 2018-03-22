library(shiny)

shinyUI(fluidPage(theme = "bootstrap.css",
                  
                  # Application title
                  titlePanel("Application for Predicting the Next Word in the Sentence"),
                  
                  fluidRow(
                    column(12,
                           br(),
                           h4("This application predicts the next word in a phrase as you type it:", style = "color:blue"),
                           br(),
                           h4("To run this application, please type a phrase in the Text Box below."),
                           br(),
                           h4("Beneath the input Text Box, you will see what you entered along with the suggested next word:", style = "color:blue"),
                           br(),
                           h4("Below that, you will see the predicted next word of your phrase."),
                           br(),
                           br()
                    )
                  ),
                  
                  fluidRow(
                    column(6,
                           textInput("input_str", 
                                     label = "Enter some text without punctuation marks:", value = " "
                           )             
                    )    
                  ),
                  
                  fluidRow(
                    column(12,
                           br(),
                           br(),
                           br(),
                           br(),
                           h4("You entered (with suggested completion of your current word):", style = "color:red;"), 
                           verbatimTextOutput("text1")             
                    )
                  ),
                  
                  fluidRow(
                    column(12,
                           br(),
                           br(),
                           h4("Predicted next word:", style = "color:blue"), 
                           verbatimTextOutput("text2")            
                    )
                  )
))