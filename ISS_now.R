install.packages("httr2")
library(httr2)
install.packages("jsonlite")
library(jsonlite)

iss <- request("http://api.open-notify.org/iss-now.json")
issNow <- iss |> req_perform()
dataISS <- issNow |> resp_body_json()
print(dataISS)