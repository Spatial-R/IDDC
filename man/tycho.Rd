
\name{tycho}
\alias{get.data,get.info,get.state.name,get.disease.name，get.city.name}
\title{Functions to download infectious disease dataset from the tycho project}
\description{
Gather the infectious disease dataset from tycho project (\url{https://www.tycho.pitt.edu/index.php}), which only provides the level 2 dataset.
}
\usage{
get.data(apikey, loc_type, disease, event, city, state, start, end)
get.info(apikey, loc_type, disease, event, city, state)
get.city.name(apikey)
get.state.name(apikey)
get.disease.name(apikey)
}
\arguments{
  \item{apikey}{the apikey for the dataset in tycho project, you can apply for the key in https://www.tycho.pitt.edu/apikey.php}
  \item{loc_type}{which kind of dataset you want to download. Alternative values are: \strong{city} and \strong{state}}
  \item{disease}{Target disease name you want to download. Using the get.diseases function will return all the alternative disease names in tycho project}
  \item{event}{dataset for case or death. ALternative values are: \strong{cases} and \strong{deaths}}
  \item{city}{target city name. Using the get.cities function will return all the alternative city names in tycho project}
  \item{state}{target state name. Using the get.states function will return all the alternative state names in tycho project. Actually, if the city name was set, there is no need to set the state name}
  \item{start}{the start year for the dataset}
  \item{end}{the end year for the dataset}
}
\details{
Registered users can download a complete dump of Level 1 dataset, but for the level 3 datasets may be requested using the Level 3 data request form. See \href{https://www.tycho.pitt.edu/faq.php}{here}.
}
\value{
  \item{target infectious disease dataset for get.data function}
  \item{detail summary descriptions to the dataset for get.info function}
  \item{a list of available cities for get.city.name function}
  \item{a list of available states for get.state.name funtion}
  \item{a list of available disease for get.disease.name function}
}
\references{
\url{https://www.tycho.pitt.edu/api_help.php}
}
\author{
Bing Zhang
}
\note{
nothing
}
\seealso{
nothing
}
\examples{
get.data(apike="your apikey",loc_type="city", disease="measles", event="cases", city="Cincinnati",
start="1980", end="2010")
}
\keyword{tycho}
