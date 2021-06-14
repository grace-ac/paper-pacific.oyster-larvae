library(dplyr)

#Read in differentially abundant proteins --> 69 proteins; threshold (from jupyter noteboook: [02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynbhttps://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb))    
prot <- read.table("analyses/BLAST-to-GOslim/_prot-final.tab")
#rename column "V4" "uniprot_acc", and "V1" "protein"
colnames(prot) <- c("protein", "V2", "V3", "uniprot_acc", "V5", "V6", "V7")

#Read in the Blastquery-GOslim-proteome.tab:
blastGO <- read.table("analyses/BLAST-to-GOslim/Blastquery-GOslim-proteome.tab", sep = '\t')

#rename column "V1" "protein"
colnames(blastGO) <- c("protein", "GO_ID", "GOslim", "V4")

#`join` prot and blastGO by "protein":
protGOslim <- left_join(prot, blastGO, by = "protein")

#49983 rows instead of 2808. There are multiple GOslim IDs. Just save the biogical process ones ("P" in column "V4")

write.table(protGOslim, "analyses/BLAST-to-GOslim/protGOslim.tab", sep = '\t', row.names = FALSE, quote = FALSE, col.names = FALSE)

#Go back to [02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynbhttps://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb) to reduce rows and get a table for a pie chart (**Fig. 2** in paper)
