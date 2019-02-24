# load packages
pacman::p_load(plumber, RSelenium, tictoc)

# specify remote driver
remDr <- remoteDriver(
  remoteServerAddr = "selenium-chrome",
  port = 4444,
  browserName = "chrome"
)
