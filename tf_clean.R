library(tidyverse)
library(readr)

trump2025 <- read_lines("data/Trump_2025")

  str_subset("^(THE PRESIDENT:|AUDIENCE|SPEAKER|VICE PRESIDENT|REPRESENTATIVE)", negate = TRUE)

texto_filtrado <- trump2025 %>%
  str_subset("^\\s*(?!THE PRESIDENT:)[A-Z ]+", negate = TRUE)

