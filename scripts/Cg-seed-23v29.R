#=======================================
# Script for comparing 23C and 29C

#read in csv file from Owl (need to move to GitHub if this file is what we want)
data <- read.csv("http://owl.fish.washington.edu/scaphapoda/grace/2015-Cgseed-DIA/20190403-Cgseed-report.csv")

#want to change file so that each row is a protein. the replicate names are columns. cell contents are area data. Condition is less important because I know that Oysterseed 1 and 13 were at 23C and 2 and 14 were at 29C 