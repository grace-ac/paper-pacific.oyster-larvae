Directory contains files and outputs for taking _C. gigas_ BLAST output to GOslim

## `BLAST-to-GOslim`

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
