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
names(rawPeakAreas) <- c("ProteinName", "PeptideSequence", "PeptideModifiedSequence", "PrecursorCharge", "PrecursorMz", "FragmentIon", "ProductCharge", "ProductMz", "IsotopeLabelType", "Condition", "BioReplicate", "FileName", "Area", "StandardType", "Truncated", "DetectionQValue")

head(rawPeakAreas)

#convert raw Skyline output to MSstats format
#rawPeakAreas has 719904 obs and 16 variables
PeakAreas <- SkylinetoMSstatsFormat(rawPeakAreas)

#PeakAreas has 188508 obs, and 15 variables
#Output message: 
#** Peptides, that are used in more than one proteins, are removed.
#** Intensities with great than 0.01 in DetectionQValue are replaced with zero.
#** 10 features have all NAs or zero intensity values and are removed.
#** 5852 features have 1 or 2 intensities across runs and are removed.
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
#** There are 9204 intensities which are zero or less than 1. These intensities are replaced with 1.
#Error in dataProcess(PeakAreas, normalization = "equalizeMedians", summaryMethod = "TMP",  : 
#                       ** MSstats suspects that there are fractionations and #potentially technical replicates too. Please add Fraction column in the input.

#Add fraction column and have all cells listed as "1" from this google forum post: https://groups.google.com/forum/#!searchin/msstats/fractionations%7Csort:date/msstats/dVh6IEE0xTE/jiokWrNSCgAJ
PeakAreas$Fraction <- "1"

#Re-try the dataProcess function
QuantData <- dataProcess(PeakAreas)
#** Log2 intensities under cutoff = 9.6627  were considered as censored missing values.
#** Log2 intensities = NA were considered as censored missing values.
#** Use all features that the dataset origianally has.

#   Summary of Features :
#                         count
# of Protein              2808
# of Peptides/Protein     1-85
# of Transitions/Peptide   1-5

#** 58 Proteins have only single transition : Consider excluding this protein from the dataset. (CHOYP_BRAFLDRAFT_108193.2.2|m.37878, CHOYP_BRAFLDRAFT_118867.1.1|m.27944, CHOYP_BRAFLDRAFT_120058.1.1|m.9895, CHOYP_BRAFLDRAFT_230143.1.1|m.15015, CHOYP_BRAFLDRAFT_261932.1.1|m.23690, CHOYP_BRAFLDRAFT_275667.1.1|m.17353, CHOYP_BRAFLDRAFT_64737.1.1|m.40499, CHOYP_BRAFLDRAFT_68867.1.1|m.4095, CHOYP_BRAFLDRAFT_72357.1.1|m.59063, CHOYP_BRAFLDRAFT_93126.2.3|m.15451 ...) 

#Summary of Samples :
#                           23C 29C
# of MS runs                 8   8
# of Biological Replicates   2   2
# of Technical Replicates    4   4

#Summary of Missingness :
  # transitions are completely missing in one condition: 0
  # run with 75% missing observations: 0

#After it's all done, check what the ProcessedData looks like
head(QuantData$ProcessedData)
#large List (5 elements, 101.4 Mb)
#===============================================================================

# Create dataprocess plots
dataProcessPlots(data = QuantData, type = "ProfilePlot")
dataProcessPlots(data = QuantData, type = "QCPlot")

# CREATE CONTRAST MATRIX

levels(QuantData$ProcessedData$GROUP_ORIGINAL) #Levels: "23C" and "29C"
comparison <- matrix(c(-1, 1), nrow = 1)
row.names(comparison) <- "23C-29C"

#### GROUP COMPARISON
testResultOneComparison <- groupComparison(contrast.matrix = comparison, data = QuantData) 
testResultOneComparison$ComparisonResult #View results
proteinComparisonResults <- testResultOneComparison$ComparisonResult #Save as new dataframe
write.csv(proteinComparisonResults, "DIA_2015/analyses/20181218-2015Cgseed-protcomp.csv", col.names = c("Protein", "Label", "log2FC", "SE", "Tvalue", "DF", "pvalue"), row.names = F) #Write out data frame

# GROUP COMPARISON PLOTS
groupComparisonPlots(data = proteinComparisonResults, type = "VolcanoPlot") #Volcano plot, alpha = 0.05.
#null device 
#1 
#There were 17 warnings (use warnings() to see them)
groupComparisonPlots(data = proteinComparisonResults, type = "ComparisonPlot") #Comparison plot, alpha = 0.05
#output for Comparison PLot warning:
#null device 
#1 
#There were 17 warnings (use warnings() to see them)