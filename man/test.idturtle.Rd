\name{test.idturtle}
\alias{test.idturtle}
\title{
Test data of known turtles
}
\description{
Test some data of known turtles previously processed with turtle.idturtle to detect errors in the identification. For example, if some marking system is bad readed.
}
\usage{
test.idturtle(data.comp, data.ref, date = "date", ID = "ID", PL = "PL")
}
\arguments{
  \item{data.comp}{
Dataframe with data of the last measurements of specimens to test
}
  \item{data.ref}{
Dataframe with the database of measurements of all the specimens
}
  \item{date}{
Name of the column with the date in both data.comp and data.ref
}
  \item{ID}{
Name of the identification code of the turtle column in both data.comp and data.ref
}
  \item{PL}{
Name of the plastral length column in both data.comp and data.ref
}
}
\details{
The function also write in the hard disc a csv file named "effectivity.csv", which has the same data than the dataframe generated with this function.
}
\value{
Dataframe with the following columns:
ID: The ID of the tested turtle
Ident: If all the measurements of the turtle is identified as the first option
Years: Number of Years between the first capture and the las recapture of the turtle
minPL: The minimum size of PL (usually the size of the first capture)
PLDif: The difference in PL size between the first and last capture of the turtle
maxRMSD: The maximum value between the tested measurement with any other of the same turtle. Is the worst RMSD value of a measurement of the same turtle with the tested measuremnt
minRMSD: The minimum RMSD value of the tested measurement and any other turtle different than the tested one
NMeasurements: The number of measurements of other turtles classified better than the worst clasified measurement of the tested turtle
NTurtles: The number of turtles with at least one measurement best clasified that the worst measurement of the tested turtle 
}
\author{
Aitor Valdeon
}
\note{
test.idturtle will not work if you not make previously the analysis with idturtle.idturtle, because test.idturtle must read the auxiliary files created during the idturtle.idturtle analysis
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
}
\keyword{ test }
\keyword{ effectivity }
\keyword{ RMSD }
\keyword{ idturtle }