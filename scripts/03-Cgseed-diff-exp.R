#Script to subset the proteins that were detected with a log2FC greater than 3.00 and less than -3.00. These are differentially expressed, but not significantly.

#read in proteins detected from MS Stats (2,808 proteins)
data <- read.csv("data/20190403-2015Cgseed-protcomp.csv")

library(dplyr)
library(tidyr)

#subset the proteins that were detected with log2FC greater than 3.00
diffexup <- subset.data.frame(data, log2FC > 3.00, select = c(Protein, Label, log2FC, SE))
#subset the proteins that were detected with log2FC less than -3.00
diffexlow <- subset.data.frame(data, log2FC < -3.00, select = c(Protein, Label, log2FC, SE))

#combine the two into one table
diffex <- rbind(diffexlow, diffexup)

write.csv(diffex, "analyses/proteins_comp.csv")

#### Re-do using the annotated protein list 
data_annot <- read.csv("analyses/Cgseed-protcomp-annotation.tab", sep = '\t', header = F)

diffup <- subset.data.frame(data_annot, V3 > 3.00, select = c(V1, V2, V3, V4, V5, V6))
difflow <- subset.data.frame(data_annot, V3 < -3.00, select = c(V1, V2, V3, V4, V5, V6))

#combine the upper and lower thresholds
difftot <- rbind(diffup, difflow)
write.csv(difftot, "analyses/proteins_comp_annot.csv")
