#=====================================================================================#
#Script for annotating the Skyline 2015 C. gigas DIA output with GOslim


#read in skyline output
skyout <- read.csv("https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/data/20181218-SkytoMSstats-report.csv")

skyout_sm <- data.frame(skyout$Replicate.Name, skyout$Condition, skyout$Area, skyout$Protein.Name)
names(skyout_sm) <- c("Replicate_Name", "Condition", "Area", "Protein_Name")
head(skyout_sm)

#read in Blastquery-GOslim.tab
GO <- read.table("analyses/0401-blastp/Blastquery-GOslim.tab", sep = '\t')


#join files based on "Protein_Name" column in skyout_sm and column 1 in GO

