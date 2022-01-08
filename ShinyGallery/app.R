library(shiny)
ui <- fluidPage(
    uiOutput("tab"),
    br(),
    br(),
    uiOutput("shiny_proxy")
)

server <- function(input,output,session){
    output$tab <- renderUI({
      url <- a("DockerHub Example", href="http://127.0.0.1:80",target="_blank")
      tagList("Click to Test:", url)
    })
    
    output$shiny_proxy <- renderUI({
      url <- a("Shiny Proxy image Example", href="http://127.0.0.1:8989",target="_blank")
      tagList("Click to Test:", url)
    })
}

options(shiny.port = 8686)
options(shiny.host = "0.0.0.0")

shinyApp(ui,server)

