#Script to subset the proteins that were detected with a log2FC greater than 2.00 and less than -2.00. These are differentially expressed, but not significantly.

#read in annotated protein list that were detected in MSstats
data <- read.csv("analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.sorted", sep = '\t', header = F)

library(dplyr)
library(tidyr)
library(stringr)

#subset the proteins that were detected with log2FC greater than 3.00
diffexup <- subset.data.frame(data, V3 > 2.00)
#subset the proteins that were detected with log2FC less than -3.00
diffexlow <- subset.data.frame(data, V3 < -2.00)

#combine the two into one table
diffex <- rbind(diffexlow, diffexup)

#add column names
colnames(diffex) <- c("Protein", "Label", "log2FC", "uniprot_accession_ID", "gene_ID", "sprot_uniprotaccession_geneID", "e-value")
  
write.csv(diffex, "analyses/annotated-prot-lists/proteins_comp_annot_threshold.csv", row.names = FALSE)
