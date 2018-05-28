#package installation

#install.packages('webshot')


#installing phantom.js which is used in this package

#webshot::install_phantomjs()


#loading the required library

library(webshot)

#PDF copy of a web page / article 

webshot("https://www.gatesnotes.com/About-Bill-Gates/Best-Books-2017", 
        "billgates_book.pdf", 
        delay = 2)

#Screenshot of Viewport

webshot('https://www.livemint.com/','livemint.png', cliprect = 'viewport')

#Multiple Selector Based Screenshots

webshot("https://github.com/hadley", 
        file = c("organizations.png","contributions.png"),
         selector = list("div.border-top.py-3.clearfix","div.js-contribution-graph"))

