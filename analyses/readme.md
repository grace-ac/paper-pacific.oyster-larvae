# `analyses` sub-directory contents:    

## [BLAST-to-GOslim/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/BLAST-to-GOslim)      

[0327-cgseedblast-sprot.tab](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/0327-cgseedblast-sprot.tab)    
BLAST output (fmt 6) of the deduced _C. gigas_ proteome (proteome: [data/Cg_Giga_cont_prtc_AA.fasta](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/data/Cg_Giga_cont_prtc_AA.fasta))

[20190403-2015Cgseed-protcomp.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/20190403-2015Cgseed-protcomp.csv)     
Table of the 2,808 detected proteins from MS Stats using a threshold of <2.00 and >2.00 log2FC. .csv format

[20190403-2015Cgseed-protcomp.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/20190403-2015Cgseed-protcomp.tab)     
Table of the 2,808 detected proteins from MS Stats using a threshold of <2.00 and >2.00 log2FC. .tab format

[Blastquery-GOslim-proteome.tab](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/Blastquery-GOslim-proteome.tab)    
Output from jupyter notebook [01-blastp-to-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/01-blastp-to-GOslim.ipynb). Table of the deduced _C. gigas_ proteome proteins, GO ID, gene ontology process, and whether the process desciprion (column three) falls under biological process (P), cellular component (C), or molecular function (F).

[_blast-GO-unfolded.sorted](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/_blast-GO-unfolded.sorted)_    
Intermediary table from [01-blastp-to-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/01-blastp-to-GOslim.ipynb) that contains the uniprot Accession IDs (column 1), protein name (column 2), and GO IDs (column 3).      

[_blast-annot.tab](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/_blast-annot.tab)_     
Table from [01-blastp-to-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/01-blastp-to-GOslim.ipynb) that contains uniprot accession ID (Column 1), protein name (column 2), and the list of GO IDs associated with those (column 3). Differs from [_blast-GO-unfolded.sorted](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/_blast-GO-unfolded.sorted)_ in that in this table, there are  multiple GO IDs per line, whereas in [_blast-GO-unfolded.sorted](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/_blast-GO-unfolded.sorted)_, each GO ID has it's own row.

[_blast-sep.tab](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/_blast-sep.tab)_    
Same as [0327-cgseedblast-sprot.tab](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/BLAST-to-GOslim/0327-cgseedblast-sprot.tab), except that the columns are completely separated by tab (no more commas or |). Useful for table joining.

[_prot-final.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/_prot-final.tab)_        
Table from this notebook: [02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb). This table is derived from [20190403-2015Cgseed-protcomp.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/20190403-2015Cgseed-protcomp.tab), and contains the protein names (column 1), the temperature treatments (column 2), log 2FC (column 3), SE (column 4), T value (column 5), DF (column 6), and pvalue (volumn 7).

[_prot.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/_prot.tab)_    
Table from this notebook: [02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb). This table is derived from [20190403-2015Cgseed-protcomp.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/20190403-2015Cgseed-protcomp.tab), it is the same exact table, but every column is completely separated by a tab (no commas or |'s).       

[protGOslim.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/protGOslim.tab)      
Table from this notebook: [02-detected-prots-annotate-GOslim.ipynb](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb), and this R script: [scripts/03-join-annotate-diffexp-prot.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/03-join-annotate-diffexp-prot.R). Table is the same as [_prot-final.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/_prot-final.tab)_ , but has three more columns tacked on the end: GO IDs (column 8), GO slim description (column 9), and whether the GOslim term falls under biological process (P), cellular component (C), or molecular function (F).

[proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/proteins_comp_annot_threshold.csv)     
CSV table of the 69 differentially abundant proteins with annotation.

[proteins_comp_annot_threshold.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/proteins_comp_annot_threshold.tab)    
Same table as [proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/BLAST-to-GOslim/proteins_comp_annot_threshold.csv), but tab-delimited.

--

## [DAVID-outputs/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/DAVID-outputs)     

[DAVID-outputs/23C-GOterms-david.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/23C-GOterms-david.tab)   
Output of GOterms from DAVID with the proteins in 23C treatment group, with the 2,808 detected proteins as the background.

[DAVID-outputs/29C-GOterms-david.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/29C-GOterms-david.tab)    
Output of GOterms from DAVID with the proteins in the 29C treatment group, with the 2,808 detected proteins as the background.

[DAVID-outputs/david-comp-mstat.txt](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/david-comp-mstat.txt)   
Created in [scripts/04-23and29-GO-enrich-for-Revigo.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/04-23and29-GO-enrich-for-Revigo.R), DAVID output combining 23C and 29C treatment groups.

[DAVID-outputs/david-diffex-proteome.txt](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/DAVID-outputs/david-diffex-proteome.txt)   
DAVID output of 2,808 detected proteins with the _C. gigas_ proteome as the background.

--

## [Fig2-pie/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/Fig2-pie)    

[GOslim-P-pie-detectedprots.txt](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/GOslim-P-pie-detectedprots.txt)    
List of GOslim biological processes terms and their counts from [02-detected-prots-annotate-GOslim.ipynb)](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/notebooks/02-detected-prots-annotate-GOslim.ipynb). These GOslim terms are from the 2,808 detected protein list.

[detectedprots-GOslim-pie.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/Fig2-pie/detectedprots-GOslim-pie.pdf)       
PDF of the GOslim pie from the table above. Made in this script: [scripts/06-Fig2-detectedprot-pie.Rmd](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/06-Fig2-detectedprot-pie.Rmd). This is **Fig. 2** in the manuscript.  

--

## [MS_stats/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/MS_stats)    

Directory containing output from `MSStats` package.

Script: [scripts/01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R)

#### Figures:
General descriptions for each plot can be found here: [MSstats_v3.7.3_manual.pdf](https://msstats.org/wp-content/uploads/2017/01/MSstats_v3.7.3_manual.pdf)

[ComparisonPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ComparisonPlot.pdf)     

[ConditionPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ConditionPlot.pdf)        

[ProfilePlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ProfilePlot.pdf)       

[ProfilePlot_wSummarization.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/ProfilePlot_wSummarization.pdf)        

[QCPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/QCPlot.pdf)         

[VolcanoPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/VolcanoPlot.pdf)        

[peptideVolcanoPlot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/MS_stats/peptideVolcanoPlot.pdf)       

--

## [annotated-prot-lists/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/annotated-prot-lists)

[20190403-2015Cgseed-protcomp.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/20190403-2015Cgseed-protcomp.csv)
Created in [scripts/01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/01-MSstats-Cgseed-DIA.R).

[23C_proteins_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/23C_proteins_annot_threshold.csv)   
Proteins higher in the 23C treatment group (36 proteins).

[29C_proteins_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/29C_proteins_annot_threshold.csv)
Proteins higher in the 29C treatment group (33 proteins).

[Cgseed-protcomp-annotation-name.sorted](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.sorted)    
Used in [scripts/02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/02-Cgseed-diff-exp.R)    

[Cgseed-protcomp-annotation-name.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.tab)    
Tab-delimited version of [Cgseed-protcomp-annotation-name.sorted](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/Cgseed-protcomp-annotation-name.sorted).    

[Cgseed-protcomp-annotation.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/Cgseed-protcomp-annotation.tab)    
Tab-delimited protein list, not fully annotated.

[diff_abundant-prot-annotated.tab](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/diff_abundant-prot-annotated.tab)    
List of proteins of physiological interest annotated.

[proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/annotated-prot-lists/proteins_comp_annot_threshold.csv)    
List of 69 proteins of physiological interest.

--

## [revigo/](https://github.com/grace-ac/paper-pacific.oyster-larvae/tree/master/analyses/revigo)     

[042521-diffab_enrich-revigo-plot.pdf](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/042521-diffab_enrich-revigo-plot.pdf)    
Plot showing the proteins of physiological interest, .pdf format. Made using [scripts/05-042521-Revigo_Fig3.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/05-042521-Revigo_Fig3.R).

[23C-GOterm-Foldenrich-for-Revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/23C-GOterm-Foldenrich-for-Revigo.csv)      
Revigo output that is just looking at the proteins of interest higher in the 23C treatment group. Used in manuscript as **Table 3**.

[29C-GOterm-Foldenrich-for-Revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/29C-GOterm-Foldenrich-for-Revigo.csv)     
Revigo output that is just looking at the proteins of interest higher in the 29C treatment group. Used in manuscript as **Table 2**.

[Fig3-enrich_diffabundant_proteins.png](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/Fig3-enrich_diffabundant_proteins.png)       
Plot showing the proteins of physiological interest, .png format. Made using [scripts/05-042521-Revigo_Fig3.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/scripts/05-042521-Revigo_Fig3.R).

[enriched_diff.ab.proteins-for-Revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/enriched_diff.ab.proteins-for-Revigo.csv)     
Information put into revigo to create figure and get R script to modify.

[revigo-detected-proteome-108.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/revigo-detected-proteome-108.csv)       
File is [supplemental-files/SuppFile08-revigo-detected-proteome-108.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile08-revigo-detected-proteome-108.csv). The 108 enriched biological process GO terms when comparing the list of 2,808 detected proteins ([supplemental-files/SuppFile07-20190403-2015Cgseed-protcomp.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile07-20190403-2015Cgseed-protcomp.csv)) to the full _Crassostrea gigas_ deduced proteome.

[revigo.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/analyses/revigo/revigo.csv)     
File output from Revigo website. Used in R script from Revigo to create plot.
