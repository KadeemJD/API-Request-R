

install.packages("httr2")
library(httr2)
install.packages("jsonlite")
library(jsonlite)

res <- request("https://jsonplaceholder.typicode.com/posts/1")
resp <- res |> req_perform()
data <- resp |> resp_body_json()
print(resp)



res |> req_dry_run()

#ls("package:httr2")