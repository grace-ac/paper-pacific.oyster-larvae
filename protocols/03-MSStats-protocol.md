Part 3 of a series of protocols in directory [paper-pacific.oyster-larvae/tree/master/protocols](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/protocols)

This markdown file contains the R script used to analyze the chromatogram peak data exported from Skyline Daily ([protocol 2](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/protocols/02-SkylineDaily-protocol.md)) and to create figures. 

Make sure that you have access to the Skyline DIA output file.

I used the script linked below to convert the Skyline Output file to a version that is usable for MS Stats. Then that new file was used to create a Volcano Plot, Comparison Plots, QC Plots, and Profile Plots:      
[01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R)

The resources used to create the script were:    
- [MS Stats R Package Manual](https://bioconductor.org/packages/release/bioc/manuals/MSstats/man/MSstats.pdf)
- [MS Stats Manual](http://msstats.org/wp-content/uploads/2017/01/MSstats_v3.7.3_manual.pdf)

A threshold of >2.00 and <-2.00 log-2 fold change was decided to be significant (differs from default in MS Stats). 

