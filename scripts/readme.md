### Directory for scripts for the Oysterseed DIA project

[01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R)    
R script for using MS Stats package to analyze Skyline Daily MS Stats report. Creates visualizations of the data, and a list of differentially abundant proteins as compared to the background proteome.

[02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/02-Cgseed-diff-exp.R)   
R script for subsetting [analyses/Cgseed-protcomp-annotation-name.sorted](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Cgseed-protcomp-annotation-name.sorted) (the identified differentially abundant proteins from MS Stats) based on a set cut-off point of > 2.00, and < -2.00 log-2 fold change. Created list of 69 differentially abundant proteins ([analyses/proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/proteins_comp_annot_threshold.csv)).

[03-join-annotate-diffexp-prot.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/03-join-annotate-diffexp-prot.R)    
R script for annotating differentially expressed proteins.

[]()     

[05-042521-Revigo_Fig3.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/05-042521-Revigo_Fig3.R)      
Uses [analyses/revigo/revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/revigo.csv), which is output from the revigo website, and creates [analyses/revigo/Fig3-enrich_diffabundant_proteins.png](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/Fig3-enrich_diffabundant_proteins.png) and a pdf version: [analyses/revigo/042521-diffab_enrich-revigo-plot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/042521-diffab_enrich-revigo-plot.pdf).

[06-Fig2-detectedprot-pie.Rmd](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/06-Fig2-detectedprot-pie.Rmd)      
Rmd script for created Fig 2 pie. Uses [analyses/Fig2-pie/GOslim-P-pie-detectedprots.txt](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/GOslim-P-pie-detectedprots.txt) that was created in [notebooks/02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb), and creates [analyses/Fig2-pie/detectedprots-GOslim-pie.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/detectedprots-GOslim-pie.pdf)    
