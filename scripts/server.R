# Server Function ---------------------------------------------------------

server <- function(input, output) {
  # output$dna <-
  #   
  # output$base_count <-
  #     
  # output$rna <-
  # 
  output$protein <- renderText({
    translate_rna(input$protein)
  })
  
}