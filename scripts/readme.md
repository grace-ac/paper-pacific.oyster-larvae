### Directory for scripts for the Oysterseed DIA project

[01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R)    
R script for using MS Stats package to analyze Skyline Daily MS Stats report. Creates visualizations of the data, and a list of differentially expressed proteins as compared to the background proteome. 

[02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/02-Cgseed-diff-exp.R)   
R script for subsetting [Cgseed-protcomp-annotation-name.sorted](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Cgseed-protcomp-annotation-name.sorted) (the identified differentially expressed proteins from MS Stats) based on a set cut-off point of > 2.00, and < -2.00 log-2 fold change. Created list of 69 differentially expressed proteins ([proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/proteins_comp_annot_threshold.csv)).

[03-join-annotate-diffexp-prot.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/03-join-annotate-diffexp-prot.R)    
R script for annotating differentially expressed proteins. 
