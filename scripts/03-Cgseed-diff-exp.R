#Script to subset the proteins that were detected with a log2FC greater than 2.00 and less than -2.00. These are differentially expressed, but not significantly.

#read in annotated protein list that were detected in MSstats
data <- read.csv("analyses/Cgseed-protcomp-annotation-name.sorted", sep = '\t', header = F)

#add column names


library(dplyr)
library(tidyr)

#subset the proteins that were detected with log2FC greater than 3.00
diffexup <- subset.data.frame(data, V3 > 2.00)
#subset the proteins that were detected with log2FC less than -3.00
diffexlow <- subset.data.frame(data, V3 < -2.00)

#combine the two into one table
diffex <- rbind(diffexlow, diffexup)

write.csv(diffex, "analyses/proteins_comp_annot_threshold.csv")
