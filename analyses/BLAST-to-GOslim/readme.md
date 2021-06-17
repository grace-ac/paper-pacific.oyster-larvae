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

  



 
