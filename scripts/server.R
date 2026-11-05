# Server Function ---------------------------------------------------------

server <- function(input, output) {
  output$dna <- renderText({
    dna()
    }) 

  output$base_count <- renderTable({
    base_freqs(dna = dna())
  })
   
  output$rna <- renderText({
    transcribe_dna(dna = input$dna_to_rna)
  })
  # 
  output$protein_out <- renderText({
    translate_rna(input$protein)
  })
  
}