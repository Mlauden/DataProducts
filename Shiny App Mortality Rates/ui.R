shinyUI(pageWithSidebar(  
  headerPanel("Mortality Rate by Year and Demographics"),  
  sidebarPanel(    
    sliderInput("Year","Year",min = 1900, max = 2015, value = c(1900,2015)),	
    selectInput("Race", "Race", 
                choices = (unique(mortalityDF$Race)), selected = 1),
  selectInput("Sex", "Sex", 
              choices = (unique(mortalityDF$Sex)), selected = 1),
  selectInput("DisplayAll", "Display All Data (Ignores selections above)", 
              choices = c("TRUE","FALSE"), selected = FALSE)),
  mainPanel(    
    plotOutput('mortalityPlot')  
  )
))