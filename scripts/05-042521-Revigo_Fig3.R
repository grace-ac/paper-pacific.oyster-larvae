# A plotting R script produced by the REVIGO server at http://revigo.irb.hr/
# If you found REVIGO useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# --------------------------------------------------------------------------
# If you don't have the ggplot2 package installed, uncomment the following line:
# install.packages( "ggplot2" );
library( ggplot2 );

# --------------------------------------------------------------------------
# If you don't have the scales package installed, uncomment the following line:
# install.packages( "scales" );
library( scales );

# --------------------------------------------------------------------------

# 04/26/2021 - install ggrepel to make plot without having overlapping labels:
# Install ggrepel package if needed
#install.packages("ggrepel")
library(ggrepel)

# Here is your data from REVIGO. Scroll down for plot configuration options.

#042521 - add a column that tells which temperature treatment the GO term was most abundant in
revigo.names <- c("term_ID","description","frequency_%","plot_X","plot_Y","plot_size","fold_enrichment","uniqueness","dispensability", "temperature_trtmnt");
revigo.data <- rbind(c("GO:0048565","digestive tract development",0.032,5.383,3.458,3.863,8.666,0.649,0.000, 29),
c("GO:0050867","positive regulation of cell activation",0.055,3.948,-4.578,4.090,8.666,0.929,0.000, 29),
c("GO:0050900","leukocyte migration",0.038,-6.342,-2.270,3.937,5.633,1.000,0.000, 23),
c("GO:0065007","biological regulation",22.831,-3.829,-5.029,6.711,1.232,1.000,0.000, 29),
c("GO:0098542","defense response to other organism",0.503,-3.387,5.371,5.054,5.179,0.654,0.000, 23),
c("GO:0052548","regulation of endopeptidase activity",0.223,1.066,-5.244,4.701,5.777,0.842,0.180, 29),
c("GO:0050789","regulation of biological process",21.130,2.346,-5.016,6.677,1.259,0.902,0.298, 29),
c("GO:0009607","response to biotic stimulus",0.639,-4.300,3.459,5.158,3.028,0.799,0.346, 23),
c("GO:0009605","response to external stimulus",1.716,-4.438,4.385,5.587,1.909,0.783,0.393, 23),
c("GO:0055123","digestive system development",0.037,5.420,2.709,3.919,9.388,0.700,0.549, 29),
c("GO:0006952","defense response",0.754,-3.442,4.766,5.229,2.782,0.773,0.580, 23),
c("GO:0035295","tube development",0.223,4.858,4.059,4.700,3.923,0.675,0.582, 29),
c("GO:0035239","tube morphogenesis",0.171,4.935,3.414,4.584,4.794,0.613,0.846, 29));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$plot_size <- as.numeric( as.character(one.data$plot_size) );
one.data$fold_enrichment <- as.numeric( as.character(one.data$fold_enrichment) );
one.data$frequency <- as.numeric( as.character(one.data$frequency) );
one.data$uniqueness <- as.numeric( as.character(one.data$uniqueness) );
one.data$dispensability <- as.numeric( as.character(one.data$dispensability) );
one.data$temperature_trtmnt <- as.numeric( as.character(one.data$temperature_trtmnt) );
head(one.data);


# --------------------------------------------------------------------------
# Names of the axes, sizes of the numbers and letters, names of the columns,
# etc. can be changed below

p1 <- ggplot( data = one.data );
p1 <- p1 + geom_point( aes( plot_X, plot_Y, colour = temperature_trtmnt, size = fold_enrichment), alpha = I(1) ) + scale_size_area();
p1 <- p1 +  scale_color_gradientn( colors = c("plum3", "lightsalmon1"));
p1 <- p1 + geom_point( aes(plot_X, plot_Y, size = fold_enrichment), shape = 21, fill = "transparent", colour = I (alpha ("black", 0.6) )) + scale_size_area();
p1 <- p1 + scale_size( range=c(5, 30)) + theme_classic();  + scale_fill_gradientn(colours = c("plum3", "lightsalmon1"), limits = c(-300, 23) );
ex <- one.data [ one.data$dispensability < 3, ];
p1 <- p1 + geom_text_repel( data = ex, aes(plot_X, plot_Y, label = description), colour = I(alpha("black", 0.85)), size = 6 ) + theme_classic() ;
p1 <- p1 + labs (y = "semantic space y", x = "semantic space x");
p1 <- p1 + guides(color = FALSE) ;
p1 <- p1 + labs(size = "Fold Enrichment");
p1 <- p1 + guides(size = guide_legend(override.aes = list(fill = "gray")));
one.x_range = max(one.data$plot_X) - min(one.data$plot_X);
one.y_range = max(one.data$plot_Y) - min(one.data$plot_Y);
p1 <- p1 + xlim(min(one.data$plot_X)-one.x_range/10,max(one.data$plot_X)+one.x_range/10);
p1 <- p1 + ylim(min(one.data$plot_Y)-one.y_range/10,max(one.data$plot_Y)+one.y_range/10);


# --------------------------------------------------------------------------
# Output the plot to screen

p1;

# Uncomment the line below to also save the plot to a file.
# The file type depends on the extension (default=pdf).

# ggsave("analyses/042521-diffab_enrich-revigo-plot.pdf");

