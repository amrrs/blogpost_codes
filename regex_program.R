# install.packages("devtools")

#devtools::install_github("VerbalExpressions/RVerbalExpressions")

library(RVerbalExpressions)

strings = c('123Abdul233','233Raja434','223Ethan Hunt444')

expr =  rx_alpha()  %>%  rx_word() %>% rx_alpha() 

stringr::str_extract_all(strings,expr) 

expr =  rx_digit() 

stringr::str_extract_all(strings,expr)  

