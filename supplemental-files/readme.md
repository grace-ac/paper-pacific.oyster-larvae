### Proteomic response of early juvenile Pacific Oysters (_Crassostrea gigas_) to temperature

Grace Crandall1, Rhonda Elliott Thompson2, Benoit Eudeline3, Brent Vadopalas1, Emma Timmins-Schiffman4, Steven B. Roberts1

1 School of Aquatic and Fishery Sciences, University of Washington, Seattle, Washington 98105, United States         
2 Mason County Public Health, 415 N 6th St., Shelton, WA 98584, United States          
3 Taylor Shellfish Hatchery, 701 Broadspit Road, Quilcene, WA 98376, United States             
4 Department of Genome Sciences, University of Washington, Seattle, Washington 98195, United States      

---

#### Supplemental Files: 

- [SuppFile01-Cg_Giga_cont_prtc_AA.fasta](https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/supplemental-files/SuppFile01-Cg_Giga_cont_prtc_AA.fasta)    
_Crassostrea gigas_ deduced proteome in .fasta format. 

- [SuppFile02-01-EncyclopeDIA-protocol.md](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile02-01-EncyclopeDIA-protocol.md)    
Protocol used for DIA analysis for this project- utilizing Walnut from the EncyclopeDIA suite. Modified from the MacCoss Lab protocol. Creates chromatogram libraries from raw spectral data.

- [SuppFile03-02-SkylineDaily-protocol.md](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile03-02-SkylineDaily-protocol.md)    
Skyline Daily protocol for this project. Used to view chromatogram DIA mass spectrometry results and to export results for analyses. 

- [SuppFile04-01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile04-01-MSstats-Cgseed-DIA.R)     
R script for using MS Stats to analyze the exported Skyline results, create figures, and to identify differentially abundant proteins. For more information on how to use the script and `MSStats` package, see [SuppFile06-03-MSStats-protocol.md](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile06-03-MSStats-protocol.md)

- [SuppFile05-02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile05-02-Cgseed-diff-exp.R)     
`MSStats` did not find any significantly differentially abundant proteins using the default thresholds, so we used a threshold of <2.00 and >2.00 log2FC. This script was used to create a file that contains the differentially abundant proteins according to the <2.00 and >2.00 log2FC threshold.

- [SuppFile06-03-MSStats-protocol.md](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile06-03-MSStats-protocol.md)    
Protocol that provides a bit more information on what was used for the R script ([SuppFile04-01-MSstats-Cgseed-DIA.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile04-01-MSstats-Cgseed-DIA.R)) to analyze the exported Skyline results, create figures, and identify differentially abuundant proteins. 

- [SuppFile07-20190403-2015Cgseed-protcomp.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile07-20190403-2015Cgseed-protcomp.csv)     
Table of the 2,808 differentially abundant proteins that were identified in [SuppFile05-02-Cgseed-diff-exp.R](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile05-02-Cgseed-diff-exp.R), using the threshold of <2.00 and >2.00 log2FC.    

- [SuppFile08-revigo-detected-proteome-108.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile08-revigo-detected-proteome-108.csv)

- [SuppFile09-proteins_comp_annot_threshold.csv](https://github.com/grace-ac/paper-pacific.oyster-larvae/blob/master/supplemental-files/SuppFile09-proteins_comp_annot_threshold.csv)
