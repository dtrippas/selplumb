# make the model
source("main.R")

#* @get /get_description
get_description <- function(url){
  
  # close previous session if it exists
  remDr$closeall()
  
  # open
  remDr$open()
  
  # go to url
  remDr$navigate(url)
  
  # wait a sec
  # Sys.sleep(time = 1)
  
  # find element
  elem <- remDr$findElement(
    using = "xpath", 
    value = "//*[@id='pane']/div/div[1]/div/div/div[1]/div[3]/div[2]/div/div[2]/span[1]/span[1]/button"
  )
  
  # wait a sec
  # Sys.sleep(time = 1)

  # extract text
  unlist(elem$getElementText())
  
}
