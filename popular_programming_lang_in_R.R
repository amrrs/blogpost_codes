#install.packages(tiobeindexr)

library(tiobeindexr)

#extract hall of fame
hall_of_fame()

#extract top 20 langauges
top_20()

#extract least popular languages in the list of top 50 
tail(top_50())

#using tiobeindexr extract in a tidyverse datapipeline
library(tidyverse)

top_20() %>% 
  mutate(Change = as.numeric(gsub('%','',Change))) %>% 
  ggplot(aes(x = reorder(`Programming Language`,Change), y = Change, 
             fill = `Programming Language`,
             label = paste0(Change, "%"))) + 
  geom_col() +
  coord_flip() +
  geom_text(nudge_x = 0.1) +
  xlab('Programming Language') +
  ggtitle('Programming Languages Change from May')