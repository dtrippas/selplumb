# make the model
source("setup.R")

# wait until selenium server is running before opening
print("------- sleeping 10 s in setup.R -------")
tic()
Sys.sleep(10)
toc()
print("------- done sleeping 10 s in setup.R -------")

# close previous remote driver if it exists
if(exists("remDr")) remDr$closeall()

# open remote driver
print("------- loading remote driver in setup.R -------")
tic()
invisible(remDr$open())
toc()
print("------- done loading remote driver in setup.R -------")

#* @get /scrape_description
scrape_description <- function(place_id){
  
  # construct url from place id
  base_url <- "https://www.google.com/maps/search/?api=1&query=Google&query_place_id="
  url      <- paste0(base_url, place_id, "&hl=en")
  
  # close previous session if it exists
  # remDr$closeall()
  
  # open
  # tic()
  # invisible(remDr$open())
  # toc()

  # wait
  # Sys.sleep(0.766 * 0.5)
    
  # go to url
  print("------- navigating to URL in rest_controller.R -------")
  tic()
  remDr$navigate(url)
  toc()
  print("------- done navigating to URL in rest_controller.R -------")

  # wait
  Sys.sleep(1.197 * 2.5)
  
  # find element
  print("------- finding element detailed description in rest_controller.R -------")
  tic()
  elem <- remDr$findElement(
    using = "xpath", 
    value = "//*[@id='pane']/div/div[1]/div/div/div[1]/div[3]/div[2]/div/div[2]/span[1]/span[1]/button"
  )
  toc()
  print("------- done finding element detailed description in rest_controller.R -------")
  
  # wait a sec
  # Sys.sleep(time = 0.500 * 0.25)

  # return list
  list(
    detailed_description = unlist(elem$getElementText()), 
    url = url
  )
  
}
