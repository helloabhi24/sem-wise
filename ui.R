library(shiny)
library(shinydashboard)
library(plotly)
shinyUI(
  #call dashboradPage() fun.
  dashboardPage(
    #call dashboarHeader() fun. for dashboard hearder
    dashboardHeader(title = h2(strong("PREDICTING ACADEMIC TRENDS AND PATTERNS IN EDUCATIONAL DATABASE"),align="center"),titleWidth = 1300),
    #call dashboardsidebar() fun.for dashboard sidbar
    dashboardSidebar(
      selectInput("sel","Select One",choices = colnames(IInd[,c(5:23,25:27,29:53)]))
      ,
      selectInput("s","NO Touch",choices = colnames(IInd[,3]) )
    ),
    #call dashboardBody() fun. for dashboard Body
    dashboardBody(
      
      br(),
      #call tabsetPanel() fun. for main panel output
      tabsetPanel(
        tabPanel("Mean, mode",plotlyOutput("plot1")),
        tabPanel("line",plotlyOutput("plot2")),
        tabPanel("2013",plotlyOutput("plot3")),
        tabPanel("2014",plotlyOutput("plot4"))
        
      )
    )
  )
  
)
