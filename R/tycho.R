

#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

require(rvest)


get.city.name <- function(apikey){

  # This function will return the availables city names for the tycho project #
  # Detail information about city names is in https://www.tycho.pitt.edu/  #
  basic.url <- "http://www.tycho.pitt.edu/api/cities?apikey="
  url <- paste0(basic.url,apikey,".csv",sep = "")
  url <- paste0(basic.url,apikey,".csv",sep = "")
  city.names <- data.frame(read.table(url, header = T))
  return(city.names)


}

get.state.name <- function(apikey){

  # This function will return the availables state names for the tycho project #
  # Detail information about city names is in https://www.tycho.pitt.edu/  #

  basic.url <- "http://www.tycho.pitt.edu/api/states?apikey="
  url <- paste0(basic.url,apikey,".xml",sep = "")
  state.1 <- read_html(url) %>% html_nodes("state") %>% html_text() %>% data.frame()
  state.2 <- read_html(url) %>% html_nodes("loc") %>% html_text() %>% data.frame()
  state.names <- data.frame(state = state.2,state.abb = state.1)
  return(state.names)
}

get.disease.name <- function(apikey){

  # This function will return the availables state names for the tycho project #
  # Detail information about diseases names is in https://www.tycho.pitt.edu/  #

  basic.url <- "http://www.tycho.pitt.edu/api/diseases?apikey="
  url <- paste0(basic.url,apikey,".xml",sep = "")
  diseasenames <- read_html(url) %>% html_nodes("disease") %>% html_text() %>% data.frame()
  return(diseasesnames)
}

get.info <- function(apikey, loc_type, event, disease=None, state=None, city=None){

  #  Returns data availability, e.g.first date data were collected, most recent #
  #  collection date, and number of available records by disease and location.  #

}

get.data <- function(apikey, loc_type, disease, event="cases",
                     city, state, start, end) {

  # This function will fectch the Corresponding dataset in tycho #

  basic.url <- "http://www.tycho.pitt.edu/api/query?"
  if (loc_type == "city") {
    url <- paste(basic.url,"loc_type=city&loc=",city,"&disease=",disease,
                 "&event=",event,"&start=",start,"&end=",end,"&apikey=",apikey,".csv",sep = "")
  } else {
    url <- paste(basic.url,"loc_type=state&state=",state,"&disease=",disease,
                 "&event=",event,"&start=",start,"&end=",end,"&apikey=",apikey,".csv",sep = "")
  }
  disease <- read.table(url,sep =",",header = T)
  return(disease)
}
#get.data(apikey="",loc_type = "state",disease="measles",event="cases",
#         state="CO",start="1980",end="2001")

get.info <- function(apikey, loc_type, disease, event="cases",city, state) {
  # This function will tell you the detail information for the dataset
  # Such as the period, the location and the record numbers

  basic.url <- "http://www.tycho.pitt.edu/api/info?"
  if (loc_type == "city") {
    url <- paste(basic.url,"loc_type=city&loc=",city,"&disease=",disease,
                 "&event=",event,"&apikey=",apikey,".csv",sep = "")
  } else {
    url <- paste(basic.url,"loc_type=state&state=",state,"&disease=",disease,
                 "&event=",event,"&apikey=",apikey,".csv",sep = "")
  }
  info<- read.table(url,sep =",",header = T)
  return(info)
}
