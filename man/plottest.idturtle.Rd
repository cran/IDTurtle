\name{plottest.idturtle}
\alias{plottest.idturtle}
\title{
Analysis of the test
}
\description{
Analyze the number of measurements sets of other turtles and the number of these other turtles in the database better classified than the worst classified measurements set of the tested turtle. Also create automatically these two barplots
}
\usage{
plottest.idturtle(test)
}

\arguments{
  \item{test}{
Is the test result of the test.idturtle analysis
}
}
\value{
The function return a dataframe, wich also is written in the hard disc, and plots as percentages the number measures and the number of turtles best classified that the worst classified measure of the tested turtle.
}
\author{
Aitor Valdeon
}
\examples{
# Charge example data
data(data.comp, data.ref)
# Reduce target turtles to make faster the example execution
data.comp<-data.comp[1:3,]
data.ref<-data.ref[order(data.ref[,c("ID")]),]
data.ref<-data.ref[1:200,]
# Note that date column in our data is named in Spanish (Fecha)
identity<-turtle.idturtle(data.comp,data.ref,date="Fecha")
# Execute the test
test<-test.idturtle(data.comp,data.ref, date="Fecha")
# Plot
plot.test<-plottest.idturtle(test)}
\keyword{ test }
\keyword{ idturtle }