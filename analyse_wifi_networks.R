# installation
# devtools::install_github("hrbrmstr/wiglr")

library(wiglr)
library(tidyverse)
library(leaflet)

#Sys.setenv(WIGLE_API_KEY = "here_goes_my_encoded_token")

wifi_box <- wigle_bbox_search(12.7585, 13.1105, 77.5477, 77.8431)


wifi_box$results %>% 
  mutate(labs = sprintf("SSID: <code>%s</code><br/>Encryption: %s", ssid, encryption)) %>% 
  leaflet() %>% 
  #addTiles() %>% 
  addProviderTiles(providers$Stamen.Toner) %>% 
  #addProviderTiles(providers$OpenStreetMap, options = providerTileOptions(opacity = 0.4)) %>% 
  addCircleMarkers(~trilong, ~trilat, 
                   radius = 10, 
                   popup = ~labs, 
                   color = ifelse(
                     wifi_box$results$encryption == "none","red",
                                  ifelse(
                                    wifi_box$results$encryption == "unknown",
                                    "yellow","blue")))
