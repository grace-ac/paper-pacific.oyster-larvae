### 9/27/19
# Script for taking .tab files for GO terms for each temperature treatment into files just containing GO terms and fold enrichment values for REVIGO.

library(tidyverse)
library(dplyr)

#read in table of GO terms for 23C oysterseed
lowCGO <- read.table("https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/23C-GOterms-david.tab", sep = '\t', header = TRUE)

#read in table of GO terms for 29C oysterseed
highCGO <- read.table("https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/29C-GOterms-david.tab", sep = '\t', header = TRUE)

#select Go terms and fold enrichment columns for 23C and write out to anaylses
lowforRev <- select(lowCGO, "Term", "Fold.Enrichment")
write.csv(lowforRev, "analyses/23C-GOterm-Foldenrich-for-Revigo.csv")

#select Go terms and fold enrichment columns for 29C and write out to anaylses
highforRev <- select(highCGO, "Term", "Fold.Enrichment")
write.csv(highforRev, "analyses/29C-GOterm-Foldenrich-for-Revigo.csv")
