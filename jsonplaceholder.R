install.packages("httr2")
library(httr2)
install.packages("jsonlite")
library(jsonlite)

base_url <- "https://jsonplaceholder.typicode.com"

res_posts <- request(paste0(base_url,"posts/1")) |> request_perform()
posts <- res_posts |> resp_body_json()
print(posts)