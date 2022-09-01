### Directory for scripts for the Oysterseed DIA project

[01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R)    
R script for using MS Stats package to analyze Skyline Daily MS Stats report. Creates visualizations of the data, and a list of differentially abundant proteins as compared to the background proteome. Uses [data/20190403-MSstats-report.csv.zip](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/data/20190403-MSstats-report.csv.zip) and creates:    
- [analyses/MS_stats/ComparisonPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ComparisonPlot.pdf)
- [analyses/MS_stats/ConditionPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ConditionPlot.pdf)
- [analyses/MS_stats/ProfilePlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ProfilePlot.pdf)
- [analyses/MS_stats/ProfilePlot_wSummarization.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ProfilePlot_wSummarization.pdf)
- [analyses/MS_stats/QCPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/QCPlot.pdf)
- [analyses/MS_stats/VolcanoPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/VolcanoPlot.pdf)

[02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/02-Cgseed-diff-exp.R)   
R script for subsetting [analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.sorted](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.sorted) (the identified differentially abundant proteins from MS Stats) based on a set cut-off point of > 2.00, and < -2.00 log-2 fold change. Created list of 69 differentially abundant proteins ([analyses/annotated-prot-lists/proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/proteins_comp_annot_threshold.csv)).

[03-join-annotate-diffexp-prot.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/03-join-annotate-diffexp-prot.R)    
R script for annotating differentially expressed proteins.     
Uses/creates:    
- [analyses/BLAST-to-GOslim/_prot-final.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/_prot-final.tab)   
- [analyses/BLAST-to-GOslim/Blastquery-GOslim-proteome.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/Blastquery-GOslim-proteome.tab)    
- Creates: [analyses/BLAST-to-GOslim/protGOslim.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/protGOslim.tab)   
Which then is used in [notebooks/02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb) to create table for manuscript **Figure 2**.

[04-23and29-GO-enrich-for-Revigo.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/04-23and29-GO-enrich-for-Revigo.R)    
Uses DAVID outputs ([analyses/DAVID-outputs/23C-GOterms-david.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/23C-GOterms-david.tab) and [analyses/DAVID-outputs/29C-GOterms-david.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/29C-GOterms-david.tab)), and creates [analyses/revigo/23C-GOterm-Foldenrich-for-Revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/23C-GOterm-Foldenrich-for-Revigo.csv) and [revigo/29C-GOterm-Foldenrich-for-Revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/29C-GOterm-Foldenrich-for-Revigo.csv) respectively, which become **Table 3** and **Table 2** respectively, in the manuscript.

[05-042521-Revigo_Fig3.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/05-042521-Revigo_Fig3.R)      
Uses [analyses/revigo/revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/revigo.csv), which is output from the revigo website, and creates [analyses/revigo/Fig3-enrich_diffabundant_proteins.png](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/Fig3-enrich_diffabundant_proteins.png) and a pdf version: [analyses/revigo/042521-diffab_enrich-revigo-plot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/042521-diffab_enrich-revigo-plot.pdf).

[06-Fig2-detectedprot-pie.Rmd](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/06-Fig2-detectedprot-pie.Rmd)      
Rmd script for created Fig 2 pie. Uses [analyses/Fig2-pie/GOslim-P-pie-detectedprots.txt](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/GOslim-P-pie-detectedprots.txt) that was created in [notebooks/02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb), and creates [analyses/Fig2-pie/detectedprots-GOslim-pie.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/detectedprots-GOslim-pie.pdf)    
