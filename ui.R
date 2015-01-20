library(shiny)
shinyUI(pageWithSidebar(
        headerPanel("BMI Test"),
        sidebarPanel(
                h6("Documentation: BMI Test will consist of user inputting their Age, body weight, and height into the respective fields and pressing Lets Go buton. Please use weight in pounds and height in inches prior to inputting stats"),
                numericInput("id1", "Age",30, min = 1, max = 100, step = 1),
                textInput(inputId = "id2", label = "Body Weight lbs"),
                textInput(inputId = "id3", label = "Height inches"),
                actionButton("goButton", "Let's Go!")
                ),
        mainPanel(
                h2('BMI Test Results'),
                h3('Age'),
                verbatimTextOutput('oid1'),
                h3('Body Weight'),
                verbatimTextOutput('id2'),
                h3('Height inches'),
                verbatimTextOutput('id3'),
                h5("Results"),
                textOutput('id4')
                )
        ))