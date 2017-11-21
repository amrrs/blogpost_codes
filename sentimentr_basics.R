install.packages('sentimentr')
#or
library(devtools)
install_github('trinker/sentimentr')

#aggregated sentiment analysis

sentiment_by('My life has become terrible since I met you and lost money', by = NULL)

#sentence-level sentiment analysis

sentiment('I am not very happy. He is very happy')

#extracting sentiment terms

'My life has become terrible since I met you and lost money' %>% extract_sentiment_terms()

#highlighting

'My life has become terrible since I met you and lost money. But I still have got a little hope left in me' %>% 
  sentiment_by(by = NULL) %>%
  highlight()
