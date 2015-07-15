\name{data.ref}
\alias{data.ref}
\docType{data}
\title{
Reference data (previous data)
}
\description{
This data are from known turtles by traditional marking, but they can be used to test the package and learn how to use it
Database of Emys orbicularis in Ebro basin (NE Spain) to use as reference in the simulation of the use of idturtle
}
\usage{data(data.ref)}
\format{
  A data frame with 1200 observations on the following 9 variables.
  \describe{
    \item{\code{Fecha}}{date of the capture}
    \item{\code{ID}}{a character vector: identify each individual turtle}
    \item{\code{PL}}{a numeric vector: plastral length}
    \item{\code{GuL}}{a numeric vector: gular seam length}
    \item{\code{HumL}}{a numeric vector: humeral seam length}
    \item{\code{PecL}}{a numeric vector: pectoral seam length}
    \item{\code{AbdL}}{a numeric vector: abdominal seam length}
    \item{\code{FemL}}{a numeric vector: femoral seam length}
    \item{\code{AnL}}{a numeric vector: anal seam length}
  }
}
\source{
Valdeon, A., Longares, L.A. (2015) IDTurtle: A new and safe method for individual turtle identification using R. (to complete once the article is accepted)
}
\references{
Valdeon, A., Longares, L.A. (2015) IDTurtle: A new and safe method for individual turtle identification using R. (to complete once the article is accepted)
}
\examples{
data(data.ref)
}
\keyword{datasets}
\keyword{Emys}
\keyword{orbicularis}
\keyword{Ebro}
\keyword{turtle}
