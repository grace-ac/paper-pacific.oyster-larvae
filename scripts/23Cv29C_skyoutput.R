#===============================================================#
#Script for comparing 23C and 29C Proteins from 2015 Oysterseed DIA

#read in skyline output file
skyout <- read.csv("data/20181218-SkytoMSstats-report.csv")

#subset the columns of interest
skyout_new <- data.frame(skyout$Replicate.Name, skyout$Condition, skyout$Area, skyout$Protein.Name, skyout$File.Name)
names(skyout_new) <- c("Replicate_Name", "Condition", "Area", "Protein_Name","File_Name")
head(skyout_new)

#remove the ".m" from the Protein_Name column
skyout_new$Protein_Name <- gsub(".m.*", "", skyout_new$Protein_Name)

#separate the two temps 
three <- subset(skyout_new, skyout_new$Condition == "23C")
nine <- subset(skyout_new, skyout_new$Condition == "29C")

