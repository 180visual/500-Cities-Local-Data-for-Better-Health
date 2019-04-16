library(tidyverse)
library(shiny)
source("scatPlot.R")

#-----------------
# Load in data
## row: 500 cities
## column: 
##     4th-7th Health Outcome
##     13th-21st Prevention
dat <- read.csv("cities_val.csv", header = T) %>%
    select(c(2:ncol(dat)))
outc_name <- names(dat)[4:7]
prev_name <- names(dat)[13:21]
#-----------------

# Define UI for application that draws a scatter plot
ui <- fluidPage(
   
   # Application title
   titlePanel("Association Between Health Outcome and Prevention"),
   
   # Drop down box for selecting one health outcome as x and one prevention as y
   sidebarLayout(
      sidebarPanel(
        helpText("Select a health outcome of interests and a prevention"),
        
        selectInput("xcol", 
                    label = "Health Outcome", 
                    choices = outc_name), 
        br(),
        selectInput("ycol",
                    label = "Prevention",
                    choices = prev_name)
      
    ),
      
      # Show a plot
    mainPanel(plotOutput("scatPlot"))
)
)


# Define server logic required to draw a histogram
server <- function(input, output) {
   
   output$scatPlot <- renderPlot({
       #dat[,input$xcol]
       #Zdat[,input$ycol]
      scatPlot(dat,as.character(input$xcol),as.character(input$ycol))
       #print(paste("You have selected", input$xcol))
   })
}

# Run the application 
shinyApp(ui = ui, server = server)

