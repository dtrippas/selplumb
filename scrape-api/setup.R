# load packages
print("------- loading packages in setup.R -------")
tictoc::tic()
pacman::p_load(plumber, RSelenium, tictoc)
tictoc::toc()
print("------- done loading packages in setup.R -------")

# specify remote driver
remDr <- remoteDriver(
  remoteServerAddr = "selenium-chrome",
  port = 4444,
  browserName = "chrome"
)

