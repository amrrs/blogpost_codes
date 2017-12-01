#load rvest library

library(rvest)
library(stringr)

#url whose content to be scraped

url <- 'http://www.atis.org/glossary/definitionsList.aspx?find=A&kw=0'

#extracting the content of the given url
url_content <- read_html('http://www.atis.org/glossary/definitionsList.aspx?find=A&kw=0')


#extracting all the links from the page 
links <-  url_content %>% html_nodes('a') %>% html_attr('href')

#extracting all thhe link text from the page
text <- url_content %>% html_nodes('a') %>% html_text()

#creating a new dictonary of links and text extracted above
rough_dict <- data.frame(links,text, stringsAsFactors = F)

#filtering glossary terms leaving out irrelevant information
fair_dict <- rough_dict %>% filter(str_detect(links, 'id')) %>% select(text)





