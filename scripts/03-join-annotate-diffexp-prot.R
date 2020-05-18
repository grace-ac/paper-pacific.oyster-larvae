library(dplyr)

#Read in differentially abundant proteins --> 69 proteins; threshold
prot <- read.table("analyses/0409/_prot-comp-final.tab")
#rename column "V4" "uniprot_acc"
colnames(prot) <- c("V1", "V2", "V3", "uniprot_acc", "V5", "V6", "V7")

#read in the uniprot-SP-GO.sorted file
uniprot_SP <- read.delim("http://owl.fish.washington.edu/halfshell/bu-alanine-wd/17-07-20/uniprot-SP-GO.sorted", sep = '\t', header = FALSE)

#rename uniprot-SP-GO.sorted column "V1" as uniprot_acc
colnames(uniprot_SP) <- c("uniprot_acc", "V2","V3", "V4", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12")

#read in the `blast` output from the _C. gigas_ transcriptome
blastout <- read.delim("analyses/0409/_blast-sep.tab", sep = '\t', header = FALSE)

#rename column "V4" as uniprot_acc
colnames(blastout) <- c("V1", "V2", "V3", "uniprot_acc", "V5", "V6", "V7", "V8", "V9", "V10", "V11", "V12", "V13", "V14", "V15")

#`join` the blastout file with the uniprot_SP file based on "uniprot_acc"
blast_SP_GO <- left_join(blastout, uniprot_SP, by = "uniprot_acc")
#same number of rows! 


#`join` the blast_SP_GO and prot based on "uniprot_acc"
prot_annot <- left_join(prot, blast_SP_GO, by = "uniprot_acc")
#THERE ARE DUPLICATE PROTEINS ---> NEED TO FIGURE OUT HOW TO FIX THAT

write.table(prot_annot, "analyses/diffexp-prot-annotated.tab", sep = '\t', row.names = FALSE, quote = FALSE)
write.csv(prot_annot, "analyses/diffexp-prot-annotated.csv", row.names = FALSE, quote = FALSE)
