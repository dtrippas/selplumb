# required packages
require(jsonlite)
require(tictoc)
require(parallel)
require(tibble)

# function to do API call
scrape_description <- function(place_id) jsonlite::fromJSON(paste0("http://localhost/scrape_description?place_id=", place_id))

# call API and turn into tbl
tic()
desc_json <- scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
toc()
desc_tbl  <- as_tibble(desc_json); desc_tbl

########## debug
if(F) { 
  
  # do 5 API calls serially -- 36 s (process not spawned from R)
  tic()
  scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
  scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
  scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
  scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
  scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0")
  toc()
  
  # do 5 API calls in parallel -- 34 s (process not spawned from R)
  tic()
  mclapply(1:5, function(i) scrape_description(place_id = "ChIJzz8T0xDkA0cRMNFd9qQxLG0"))
  toc()
  
}