install.packages("httr2")
library(httr2)
install.packages("jsonlite")
library(jsonlite)

astro <- request("https://api.open-notify.org/astros.json")
astros <- astro |> req_perform()
dataAstros <- astros |> resp_body_json()
print(dataAstros)