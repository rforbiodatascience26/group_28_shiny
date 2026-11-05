
# Title Element -----------------------------------------------------------

title_element <-

# About Element -----------------------------------------------------------

about_element <-

# DNA inputs Element ------------------------------------------------------

dna_in_element <- 


# DNA output Element ------------------------------------------------------

dna_out_element <- 



# DNA Base Count table Element --------------------------------------------

base_count_element <- 



# RNA input Element -------------------------------------------------------

rna_in_element <- layout_columns(col_widths = 12,
                                    card(
                                    card_header("Transcribe your DNA"),
                                    textInput(inputId = "dna_to_rna",
                                              label = "Paste in your DNA to transcribe",
                                              value = "",
                                              placeholder = "ATGCTGATCGAATAG",)))

# RNA output Element ------------------------------------------------------

rna_out_element <-   layout_columns(col_widths = 12,
                                      card(
                                      card_header("Here is your transcribed DNA"),
                                      mainPanel(
                                      verbatimTextOutput(outputId = "rna"))))




# Protein input Element ---------------------------------------------------

protein_in_element <- layout_columns(
  col_widths = 12,
  card(
    card_header("RNA to protein translator"),
    textInput(
      inputId = "protein",
      label = "Paste your RNA sequence",
      width = "100%")
      ))



# Protein output Element --------------------------------------------------

protein_out_element <- layout_columns(col_widths = 12,
                                      card(
                                        card_header("Here is your translated protein"),
                                        mainPanel(
                                          verbatimTextOutput(outputId = "protein_out"))))


# Final UI ----------------------------------------------------------------


ui <- page_fluid(
  title_element,
  about_element,
  
  dna_in_element,
  dna_out_element,
  base_count_element,
  
  rna_in_element,
  rna_out_element,
  
  protein_in_element,
  protein_out_element
  )
  