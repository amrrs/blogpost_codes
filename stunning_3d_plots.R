library(tidyverse)
library(rayshader)
#library(viridis)



ggplot(faithfuld, aes(waiting, eruptions)) +
  geom_raster(aes(fill = density)) +
  ggtitle("3D Plotting in R from 2D_ggplot_graphics") +
  labs(caption = "Package: rayshader") +
  theme(axis.text = element_text(size = 12),
        title = element_text(size = 12,face="bold"),
        panel.border= element_rect(size=2,color="black",fill=NA))  -> faithful_dd
  
plot_gg(faithful_dd, multicore = TRUE, width = 8, height = 8, scale = 300, 
          zoom = 0.6, phi = 60,
          background = "#afceff",shadowcolor = "#3a4f70")

render_movie("faithful_3d.mp4", frames = 480)

'''

R version 3.5.1 (2018-07-02)
Platform: x86_64-apple-darwin15.6.0 (64-bit)
Running under: macOS  10.14.4

Matrix products: default
BLAS: /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRlapack.dylib

locale:
[1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets 
[6] methods   base     

other attached packages:
 [1] viridis_0.5.1     viridisLite_0.3.0
 [3] rayshader_0.11.0  forcats_0.3.0    
 [5] stringr_1.4.0     dplyr_0.8.0.1    
 [7] purrr_0.3.2       readr_1.3.1      
 [9] tidyr_0.8.3       tibble_2.1.1     
[11] ggplot2_3.1.1     tidyverse_1.2.1  

loaded via a namespace (and not attached):
 [1] httr_1.4.0              jsonlite_1.6           
 [3] foreach_1.4.4           modelr_0.1.2           
 [5] shiny_1.3.2             assertthat_0.2.1       
 [7] sp_1.3-1                cellranger_1.1.0       
 [9] tiff_0.1-5              progress_1.2.0         
[11] pillar_1.4.0            backports_1.1.4        
[13] lattice_0.20-38         glue_1.3.1             
[15] digest_0.6.18           manipulateWidget_0.10.0
[17] promises_1.0.1          rvest_0.3.3            
[19] colorspace_1.3-2        readbitmap_0.1.5       
[21] htmltools_0.3.6         httpuv_1.5.1           
[23] plyr_1.8.4              pkgconfig_2.0.2        
[25] broom_0.5.0             raster_2.8-19          
[27] haven_1.1.2             xtable_1.8-4           
[29] scales_1.0.0            webshot_0.5.1          
[31] jpeg_0.1-8              later_0.8.0            
[33] withr_2.1.2             lazyeval_0.2.2         
[35] cli_1.1.0               magrittr_1.5           
[37] crayon_1.3.4            readxl_1.1.0           
[39] mime_0.6                fansi_0.4.0            
[41] doParallel_1.0.14       nlme_3.1-137           
[43] imager_0.41.2           xml2_1.2.0             
[45] av_0.2                  tools_3.5.1            
[47] prettyunits_1.0.2       hms_0.4.2              
[49] bmp_0.3                 munsell_0.5.0          
[51] compiler_3.5.1          rlang_0.3.4.9003       
[53] grid_3.5.1              iterators_1.0.10       
[55] rstudioapi_0.9.0        htmlwidgets_1.3        
[57] crosstalk_1.0.0         igraph_1.2.4.1         
[59] miniUI_0.1.1.1          labeling_0.3           
[61] gtable_0.3.0            codetools_0.2-15       
[63] R6_2.4.0                gridExtra_2.3          
[65] lubridate_1.7.4         knitr_1.22             
[67] utf8_1.1.4              zeallot_0.1.0          
[69] stringi_1.4.3           parallel_3.5.1         
[71] Rcpp_1.0.1              vctrs_0.1.0            
[73] png_0.1-7               rgl_0.100.19           
[75] tidyselect_0.2.5        xfun_0.6 

'''
