# inspired by https://github.com/sauravg94/webscraping
# Session taken by Saurav Ghosh in Bengaluru-R-user-Group Meetup

library(tidyverse)
library(rvest)

#single-page

url <- "https://www.trustpilot.com/review/www.etsy.com?page=1"

url %>% 
  read_html() %>% 
  html_nodes(".review-content__text") %>% 
  html_text() -> reviews


library(tidyverse)
library(rvest)
library(purrr)

#multi-page

url <- "https://www.trustpilot.com/review/www.etsy.com?page=" #base URL without the page number

url %>% 
  map2_chr(1:10,paste0) %>% 
  map_chr(. %>% 
    read_html() %>% 
      html_nodes(".review-content__text") %>% 
      html_text()
  ) %>% 
  unlist() -> more_reviews
  
  
