# make the model
source("setup.R")

#* @get /scrape_description
scrape_description <- function(url){
  
  # close previous session if it exists
  remDr$closeall()
  
  # open
  tic()
  remDr$open()
  toc()

  # wait
  # Sys.sleep(0.766 * 0.5)
    
  # go to url
  tic()
  remDr$navigate(url)
  toc()

  # wait
  Sys.sleep(1.197 * 2.5)
  
  # find element
  tic()
  elem <- remDr$findElement(
    using = "xpath", 
    value = "//*[@id='pane']/div/div[1]/div/div/div[1]/div[3]/div[2]/div/div[2]/span[1]/span[1]/button"
  )
  toc()
  
  # wait a sec
  # Sys.sleep(time = 0.500 * 0.25)

  # extract text
  unlist(elem$getElementText())
  
}
