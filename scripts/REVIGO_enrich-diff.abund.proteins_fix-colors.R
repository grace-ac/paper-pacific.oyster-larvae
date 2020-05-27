#Downloaded from revigo.irb.hr
#May 27, 2020
#Enriched biological processes from 69 differentially abundant proteins from the oyster project 
# https://raw.githubusercontent.com/grace-ac/paper-pacific.oyster-larvae/master/analyses/enriched_diff.ab.proteins-for-Revigo.csv 


######================================================================
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
revigo.data <- rbind(c("GO:0048565","digestive tract development", 0.036, 1.876,-5.806, 3.661, 8.6656,0.547,0.000),
c("GO:0065007","biological regulation",20.498, 6.619,-1.130, 6.420, 1.2324,0.909,0.000),
c("GO:0098542","defense response to other organism", 0.220,-5.718,-1.906, 4.450, 5.1795,0.575,0.000),
c("GO:0050867","positive regulation of cell activation", 0.054, 1.906, 5.225, 3.842, 8.6656,0.766,0.053),
c("GO:0050900","leukocyte migration", 0.060, 5.681, 2.912, 3.890, 5.6327,0.835,0.125),
c("GO:0052548","regulation of endopeptidase activity", 0.188,-1.146, 6.282, 4.382, 5.7771,0.733,0.192),
c("GO:0009607","response to biotic stimulus", 0.342,-5.767, 0.551, 4.643, 3.0283,0.711,0.313),
c("GO:0050789","regulation of biological process",19.373, 0.200, 6.007, 6.395, 1.2587,0.807,0.318),
c("GO:0009605","response to external stimulus", 1.370,-6.177,-0.423, 5.245, 1.9094,0.695,0.370),
c("GO:0006952","defense response", 0.568,-5.387,-1.205, 4.863, 2.7816,0.686,0.521),
c("GO:0055123","digestive system development", 0.039, 1.202,-5.876, 3.704, 9.3878,0.599,0.547),
c("GO:0035295","tube development", 0.178, 2.137,-5.266, 4.359, 3.9232,0.578,0.578));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$plot_size <- as.numeric( as.character(one.data$plot_size) );
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

# ggsave("C:/Users/path_to_your_file/revigo-plot.pdf");
