#install.packages("itunesr")
#install.packages("textfeatures")
#install.packages("tidyverse")

library(itunesr)
library(textfeatures)
library(tidyverse)

#Get UK Reviews of Fifa official world cup ios app
#https://itunes.apple.com/us/app/2018-fifa-world-cup-russia/id756904853?mt=8

reviews1 <- getReviews(756904853,"GB",1)
reviews2 <- getReviews(756904853,"GB",2)
reviews3 <- getReviews(756904853,"GB",3)
reviews4 <- getReviews(756904853,"GB",4)

reviews <- rbind(reviews1,
                 reviews2,
                 reviews3,
                 reviews4)

# generate text features
feat <- textfeatures(reviews$Review)

# check what all features generated 
glimpse(feat)

# merging features with original reviews

reviews_all <- cbind(reviews, feat)


#Time for visualization


reviews_all %>% 
  ggplot(aes(n_charsperword, n_chars, colour = Rating)) + geom_point() 

reviews_all %>% 
  ggplot(aes(n_charsperword, n_words)) + geom_point() +
  facet_wrap(~Rating) +
  stat_smooth()
