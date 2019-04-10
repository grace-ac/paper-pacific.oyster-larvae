library(dplyr)

prot <- read.table("analyses/0409/_prot-comp-final.tab")

go <- read.table("analyses/0409/Blastquery-GOslim.tab", sep = '\t')

#join two files based on first column
annot <- left_join(prot, go, "V1")

write.csv(annot, "analyses/diffexp-prot-annotated.csv")
