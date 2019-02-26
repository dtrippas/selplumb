# overview
API to get additional information from a google maps page by providing a google maps place_id (e.g., ChIJzz8T0xDkA0cRMNFd9qQxLG0) in JSON format.
So far, the following info gets returned:
- detailed description (e.g., Hamburger Restaurant)
- rating (e.g., 4.1)
- url to navigate to google maps page

# instructions for setup/use
1. clone this repo: `git pull https://github.com/dtrippas/selplumb.git`
2. install docker for Windows/Mac/Linux from [the docker website](www.docker.com)
3. ensure the installation works by running `docker run hello-world` in a terminal
4. start the dtrippas/scrape-api and selenium/standalone-chrome docker files by running `docker-compose up` in the dir that contains `docker-compose.yml`
5. call the API: `http://localhost/scrape_description?place_id=ChIJzz8T0xDkA0cRMNFd9qQxLG0`
6. shut down the docker files by running `docker-compose stop`

# todo
- speed up (?)
- return more info besides detailed description
- figure out if images/reviews can be returned
- check if can be parallelized/scaled easily
- see if API can be hosted on AWS or similar cloud service
