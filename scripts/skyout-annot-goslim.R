#=====================================================================================#
#Script for annotating the Skyline 2015 C. gigas DIA output with GOslim
library(tidyr)
library(dplyr)

#read in skyline output
skyout <- read.csv("https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/data/20181218-SkytoMSstats-report.csv")

skyout_sm <- data.frame(skyout$Replicate.Name, skyout$Condition, skyout$Area, skyout$Protein.Name)
names(skyout_sm) <- c("Replicate_Name", "Condition", "Area", "Protein_Name")
head(skyout_sm)

#read in Blastquery-GOslim.tab
GO <- read.table("analyses/0401-blastp/Blastquery-GOslim.tab", sep = '\t')
names(GO) <- c("Protein_Name", "GOslim1", "GOslim2", "GOslim3")
head(GO)

#join files based on "Protein_Name" column in skyout_sm and column 1 in GO
annot <- left_join(skyout_sm, GO, by = "Protein_Name")
