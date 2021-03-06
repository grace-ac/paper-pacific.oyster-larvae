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
# Here is your data from REVIGO. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency_%","plot_X","plot_Y","plot_size","value","uniqueness","dispensability");
revigo.data <- rbind(c("GO:0048565","digestive tract development",0.032,5.344,-3.515,3.863,8.666,0.649,0.000),
c("GO:0050867","positive regulation of cell activation",0.055,3.985,4.535,4.090,8.666,0.929,0.000),
c("GO:0050900","leukocyte migration",0.038,-6.326,2.324,3.937,5.633,1.000,0.000),
c("GO:0065007","biological regulation",22.831,-3.788,5.059,6.711,1.232,1.000,0.000),
c("GO:0098542","defense response to other organism",0.503,-3.444,-5.344,5.054,5.179,0.654,0.000),
c("GO:0052548","regulation of endopeptidase activity",0.223,1.109,5.228,4.701,5.777,0.842,0.180),
c("GO:0050789","regulation of biological process",21.130,2.387,4.988,6.677,1.259,0.902,0.298),
c("GO:0009607","response to biotic stimulus",0.639,-4.338,-3.424,5.158,3.028,0.799,0.346),
c("GO:0009605","response to external stimulus",1.716,-4.486,-4.348,5.587,1.909,0.783,0.393),
c("GO:0055123","digestive system development",0.037,5.388,-2.766,3.919,9.388,0.700,0.549),
c("GO:0006952","defense response",0.754,-3.493,-4.739,5.229,2.782,0.773,0.580),
c("GO:0035295","tube development",0.223,4.813,-4.111,4.700,3.923,0.675,0.582),
c("GO:0035239","tube morphogenesis",0.171,4.897,-3.466,4.584,4.794,0.613,0.846));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$plot_size <- as.numeric( as.character(one.data$plot_size) );
one.data$value <- as.numeric( as.character(one.data$value) );
one.data$frequency <- as.numeric( as.character(one.data$frequency) );
one.data$uniqueness <- as.numeric( as.character(one.data$uniqueness) );
one.data$dispensability <- as.numeric( as.character(one.data$dispensability) );
#head(one.data);


# --------------------------------------------------------------------------
# Names of the axes, sizes of the numbers and letters, names of the columns,
# etc. can be changed below

p1 <- ggplot( data = one.data );
p1 <- p1 + geom_point( aes( plot_X, plot_Y, colour = value, size = plot_size), alpha = I(0.6) ) + scale_size_area();
p1 <- p1 + scale_colour_gradientn( colours = c("blue", "green", "yellow", "red"), limits = c( min(one.data$value), 0) );
p1 <- p1 + geom_point( aes(plot_X, plot_Y, size = plot_size), shape = 21, fill = "transparent", colour = I (alpha ("black", 0.6) )) + scale_size_area();
p1 <- p1 + scale_size( range=c(5, 30)) + theme_bw(); # + scale_fill_gradientn(colours = heat_hcl(7), limits = c(-300, 0) );
ex <- one.data [ one.data$dispensability < 0.15, ];
p1 <- p1 + geom_text( data = ex, aes(plot_X, plot_Y, label = description), colour = I(alpha("black", 0.85)), size = 3 );
p1 <- p1 + labs (y = "semantic space x", x = "semantic space y");
p1 <- p1 + theme(legend.key = element_blank()) ;
one.x_range = max(one.data$plot_X) - min(one.data$plot_X);
one.y_range = max(one.data$plot_Y) - min(one.data$plot_Y);
p1 <- p1 + xlim(min(one.data$plot_X)-one.x_range/10,max(one.data$plot_X)+one.x_range/10);
p1 <- p1 + ylim(min(one.data$plot_Y)-one.y_range/10,max(one.data$plot_Y)+one.y_range/10);


# --------------------------------------------------------------------------
# Output the plot to screen

p1;

# Uncomment the line below to also save the plot to a file.
# The file type depends on the extension (default=pdf).

# ggsave("/path_to_your_file/revigo-plot.pdf");

