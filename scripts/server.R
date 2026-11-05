source(file = "app_functions.R")

# Server Function ---------------------------------------------------------

server <- function(input, output) {

  dna_seq <- reactive({
    gene_dna(length = input$n_bases,
             base_probs = c(input$prob_A,
                            input$prob_T,
                            input$prob_C,
                            input$prob_G))
  })

  output$dna <- renderText({
    dna_seq()
  }) 

  output$base_count <- renderTable({
    base_freqs(dna = dna_seq())
  })
  
  output$rna <- renderText({
    transcribe_dna(dna = input$dna_to_rna)
  })
  
  output$protein_out <- renderText({
    translate_rna(input$protein)
  })
}