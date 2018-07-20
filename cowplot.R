  #installing the required library
  #install.packages('cowplot')
  
  
  #loading the required libraries
  library(cowplot)
  library(ggplot2)
  
  #building the first plot  
  
  plot_histogram_SL <- ggplot(iris) + 
    geom_histogram(aes(Sepal.Length), fill = "#eeff00", bins = 200)
  
  #building the second plot
  
  plot_histogram_PL <- ggplot(iris) + 
    geom_histogram(aes(Petal.Length))
  
  
  #building the third plot
  
  plot_histogram_PL_SL <- ggplot(iris,aes(Petal.Length, Sepal.Length)) + 
    geom_point(alpha = 0.2)
  
  
  #Arranging Multiple Plots in Columns - 2 in 1
  
  plot_grid(plot_histogram_SL,
            plot_histogram_PL_SL,
            labels = c('Fig B','Fig C'),
            label_x = 0.2,
            ncol = 2) -> new_p1
  
  #Arranging Multiple Plots in Rows - 2 in 1
  
  plot_grid(plot_histogram_PL,
            plot_histogram_SL,
            labels = c('Fig A','Fig B'),
            label_x = 0.2,
            nrow = 2)
  
  #A cowplot plot with ggplot - 3 in 1
  
    
  plot_grid(plot_histogram_SL,
            plot_histogram_PL_SL,
            labels = c('Fig B','Fig C'),
            label_x = 0.2,
            ncol = 2) -> new_p1
  
  plot_grid(plot_histogram_PL,
            new_p1,
            #labels = c('Fig A','Fig B'),
            label_x = 0.2,
            nrow = 2)
  
  # 4 in 1
  
    plot_grid(plot_histogram_PL,
            plot_histogram_SL,
            labels = c('Fig A','Fig B'),
            label_x = 0.2,
            nrow = 2) -> new_p2
    
    plot_grid(new_p1,new_p2)
  
