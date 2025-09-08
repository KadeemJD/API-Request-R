install.packages("httr2")
library(httr2)
install.packages("jsonlite")
library(jsonlite)
install.packages("leaflet")
library(leaflet)

iss <- request("http://api.open-notify.org/iss-now.json")
issNow <- iss |> req_perform()
dataISS <- issNow |> resp_body_json()
print(dataISS)

#getting the lat and long from our data
lat <- as.numeric(dataISS$iss_position$latitude)
long <- as.numeric(dataISS$iss_position$longitude)

#elements we need to create the map

leaflet() |> 
  addTiles()|>
  addMarkers(lng = long, lat = lat, popup = "The ISS is here!")  |>
  setView(lng = long, lat = lat,zoom = 3)
