# Server Function ---------------------------------------------------------

server <- function(input, output) {
  output$dna <- renderText({
    gene_dna(length = input$n_bases,
             base_probs = c(input$prob_A,
                            input$prob_T,
                            input$prob_C,
                            input$prob_G))
    }) 

  output$base_count <- renderTable({
    base_freqs(dna = dna())
  })
   
  output$rna <- renderText({
    transcribe_dna(dna = input$dna_to_rna)
  })
  
  output$protein_out <- renderText({
    translate_rna(input$protein)
  })
  
}