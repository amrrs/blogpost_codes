library(glue)
library(magrittr)

df <- iris

df[2,3] <- NA
df[4,2] <- NA

msg <- 'Dataframe Info: \n\n This dataset has {nrow(df)} rows and {ncol(df)} columns. 
    \n There {ifelse(sum(is.na(df))>0,"is","are")} {sum(is.na(df))} Missing Values.'

glue(msg)

head(mtcars) %>% glue_data("* {rownames(.)} has {cyl} cylinders and {hp} hp")
          


