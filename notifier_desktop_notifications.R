# install the package

devtools::install_github("gaborcsardi/notifier")

# loading the package

library(notifier)


#composing the first notification message

notify(
  title = "Here goes the Title",
  msg = c("Hello","World")
  )
  
  
#composing a slightly complex and also useful notification

notify(
  title = "World Clock",
  msg = c(paste0(" India - ", format(Sys.time(), format = "%H:%M:%S" ,tz = "Asia/Calcutta"),"\n",
                 paste0("Singapore - ", format(Sys.time(), format = "%H:%M:%S" ,tz = "Asia/Singapore"),"\n"))
          )
)

#composing a different use-case notification


library(randquotes)
notify(
  title = "Quote of the Day",
  msg = c(randquote_simple())
)
