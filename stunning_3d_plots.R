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


#sessionInfo()
#> R version 3.5.1 (2018-07-02)
#> Platform: x86_64-apple-darwin15.6.0 (64-bit)
#> Running under: macOS  10.14.4
#> 
#> Matrix products: default
#> BLAS: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRblas.0.dylib
#> LAPACK: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRlapack.dylib
#> 
#> locale:
#> [1] en_US.UTF-8/en_US.UTF-8/en_US.UTF-8/C/en_US.UTF-8/en_US.UTF-8
#> 
#> attached base packages:
#> [1] stats     graphics  grDevices utils     datasets  methods   base     
#> 
#> loaded via a namespace (and not attached):
#>  [1] compiler_3.5.1  magrittr_1.5    tools_3.5.1     htmltools_0.3.6
#>  [5] yaml_2.2.0      Rcpp_1.0.1      stringi_1.4.3   rmarkdown_1.11 
#>  [9] highr_0.8       knitr_1.22      stringr_1.4.0   xfun_0.6       
#> [13] digest_0.6.18   evaluate_0.13
