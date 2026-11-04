# Server Function ---------------------------------------------------------

server <- function(input, output) {
  # output$dna <-
  #   
  # output$base_count <-
  #     
  output$rna <- renderText({
    transcribe_dna(dna = input$dna_to_rna)
  })
  # 
  # output$protein <-
  
}