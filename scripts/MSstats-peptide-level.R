#===============================================================================
#Script for MS Stats using Skyline MS Stats report

library(MSstats)

#Script roughly follows:
#Yaamini's MSStats script: https://github.com/RobertsLab/project-oyster-oa/blob/master/analyses/DNR_Skyline_20170524/2017-06-22-MSstats/2017-06-22-MSstats.R

#MSstats manual (starting p44):http://msstats.org/wp-content/uploads/2017/01/MSstats_v3.7.3_manual.pdf
#===============================================================================

########==IMPORT AND PROCESS DATA===============================================

#read in .csv (locally. zip is in github)
rawPeakAreas <- read.csv("data/20190403-MSstats-report.csv")

head(rawPeakAreas)

#rename columns 
#for this one, I'm naming the column of peptide sequencing "ProteinName" so that all stats will be done at peptide level instead of protein level
#https://groups.google.com/forum/#!searchin/msstats/peptide%7Csort:date/msstats/7bQGtIzrEuQ/q3kolsFQAAAJ
names(rawPeakAreas) <- c("PeptideSequence", "ProteinName", "PeptideModifiedSequence", "PrecursorCharge", "PrecursorMz", "FragmentIon", "ProductCharge", "ProductMz", "IsotopeLabelType", "Condition", "BioReplicate", "FileName", "Area", "StandardType", "Truncated", "DetectionQValue")

head(rawPeakAreas)

#convert raw Skyline output to MSstats format
#rawPeakAreas has 719904 obs and 16 variables
PeakAreas <- SkylinetoMSstatsFormat(rawPeakAreas)

#PeakAreas has 693452 obs, and 15 variables
#Output message: 
#** Peptides, that are used in more than one proteins, are removed.
#** Intensities with great than 0.01 in DetectionQValue are replaced with zero.
#** 14 features have all NAs or zero intensity values and are removed.
#** 6198 features have 1 or 2 intensities across runs and are removed.
#Warning message:
#  In SkylinetoMSstatsFormat(rawPeakAreas) : NAs introduced by coercion

head(PeakAreas)

#### Process data ============================================================
QuantData <- dataProcess(PeakAreas, normalization='equalizeMedians',
                         summaryMethod="TMP",
                         cutoffCensored="minFeature", censoredInt="0",
                         MBimpute=TRUE,
                         maxQuantileforCensored=0.999)
#Output message: 
#** There are 47668 intensities which are zero or less than 1. These intensities are replaced with 1.
#Error in dataProcess(PeakAreas, normalization = "equalizeMedians", summaryMethod = "TMP",  : 
#                       ** MSstats suspects that there are fractionations and #potentially technical replicates too. Please add Fraction column in the input.

#Add fraction column and have all cells listed as "1" from this google forum post: https://groups.google.com/forum/#!searchin/msstats/fractionations%7Csort:date/msstats/dVh6IEE0xTE/jiokWrNSCgAJ
PeakAreas$Fraction <- "1"

#remove duplicate rows
PeakAreas2 <- PeakAreas[!duplicated(PeakAreas[c(1,11, 12)]),]
#now 307881 obs


#Re-try the dataProcess function
QuantData <- dataProcess(PeakAreas2, normalization='equalizeMedians',
                         summaryMethod="TMP",
                         cutoffCensored="minFeature", censoredInt="0",
                         MBimpute=TRUE,
                         maxQuantileforCensored=0.999)
#** There are 10002 intensities which are zero or less than 1. These intensities are replaced with 1.
#CAUTION : the input dataset has incomplete rows. 
##and the missing intensity values should be indicated with 'NA'. 
#The incomplete rows are listed below.
#*** Subject : 1, Condition : 23C has incomplete rows for some features (AAAATGNEAMDTSGGER_2_y12_1, AAAATGNEAMDTSGGER_2_y6_1, AAAATGNEAMDTSGGER_2_y7_1, AAAATGNEAMDTSGGER_2_y8_1, AAAATGNEAMDT

#** Log2 intensities under cutoff = 9.034  were considered as censored missing values.
#** Use all features that the dataset origianally has.

#Summary of Features :
#                        count
# of Protein             16589
# of Peptides/Protein      1-1
# of Transitions/Peptide   1-5

#*** 288 Proteins have only single transition : Consider excluding this protein from the dataset. (AASTALNNTLEVSNVR, ACIIFFDEIDAVGGAR, ADPDSTVHLLAVDK, AFSTWACTAGIETCR, AGNAEYNALVDVKPR, AGPVVTDNGNFVLDWK, AGSADCLLLSGPCGGR, AISCHIFDAMTQAK, AKYDTDFYILDK, ALAGCNFVAQDQIWK ...) 


#Summary of Samples :
#                           23C 29C
# of MS runs                 8   8
# of Biological Replicates   2   2
# of Technical Replicates    4   4

#Summary of Missingness :
# transitions are completely missing in one condition: 1213
#-> AAVQNAQFIIGLVNK_2_y4_1, AC[+57]DNNIMFQAAR_2_y3_1, AC[+57]DNNIMFQAAR_2_y7_1, ADIIFALDQSTSIGSQK_2_y10_1, ADIIFALDQSTSIGSQK_2_y11_1 ...
# run with 75% missing observations: 0

# == the summarization per subplot is done.
Warning messages:
#  1: In survreg.fit(X, Y, weights, offset, init = init, controlvals = control,
  #Ran out of iterations and did not converge
#2: In survreg.fit(X, Y, weights, offset, init = init, controlvals = control,  
  #Ran out of iterations and did not converge
# 3: In medpolish(data_w, na.rm = TRUE, trace.iter = FALSE) :
                                    


#After it's all done, check what the ProcessedData looks like
head(QuantData$ProcessedData)
#large List (5 elements, 43 Mb)
#===============================================================================

# Create dataprocess plots
dataProcessPlots(data = QuantData, type = "ProfilePlot", width=5, height=5, address = "analyses/peptide")


#dataProcessPlots(data = QuantData, type = "QCPlot", width=5, height=5, address = "analyses/")


#dataProcessPlots(data = QuantData, type="Conditionplot", width=5, height=5, address = "analyses/")


# CREATE CONTRAST MATRIX===============================================

levels(QuantData$ProcessedData$GROUP_ORIGINAL) #Levels: "23C" and "29C"
comparison <- matrix(c(-1, 1), nrow = 1)
row.names(comparison) <- "23C-29C"
print(comparison)

#### GROUP COMPARISON
testResultOneComparison <- groupComparison(contrast.matrix = comparison, data = QuantData) 
testResultOneComparison$ComparisonResult #View results
peptideComparisonResults <- testResultOneComparison$ComparisonResult #Save as new dataframe
write.csv(peptideComparisonResults, "analyses/20190403-2015Cgseed-protcomp.csv", col.names = c("Peptide", "Label", "log2FC", "SE", "Tvalue", "DF", "pvalue"), row.names = F) #Write out data frame

# GROUP COMPARISON PLOTS
groupComparisonPlots(data = peptideComparisonResults, type = "VolcanoPlot", address = "analyses/peptide") #Volcano plot, alpha = 0.05.

#groupComparisonPlots(data = peptideComparisonResults, type = "ComparisonPlot", address = "analyses/peptide") #Comparison plot, alpha = 0.05


