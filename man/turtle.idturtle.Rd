\name{turtle.idturtle}
\alias{turtle.idturtle}

\title{
Identify turtles individually through plastral biometries 
}
\description{
Identify similar specimens from a database of known turtles
}
\usage{
turtle.idturtle(data.comp, data.ref, date = "date", ID = "ID", PL = "PL", GuL = "GuL",
HumL = "HumL", PecL = "PecL", AbdL = "AbdL", FemL = "FemL", AnL = "AnL",
lim = 10, err = 3)
}

\arguments{
  \item{data.comp}{
Dataframe with data of the new specimens to identify
}
  \item{data.ref}{
Dataframe with the database of known specimens
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
  \item{GuL}{
Name of the intergular length column in both data.comp and data.ref
}
  \item{HumL}{
Name of the interhumeral length column in both data.comp and data.ref
}
  \item{PecL}{
Name of the interpectoral length column in both data.comp and data.ref
}
  \item{AbdL}{
Name of the interabdominal length column in both data.comp and data.ref
}
  \item{FemL}{
Name of the interfemoral length column in both data.comp and data.ref
}
  \item{AnL}{
Name of the interanal length column in both data.comp and data.ref
}
  \item{lim}{
Number of turtles to appear as candidates for each turtle to identify. By dafault lim=10.
}
  \item{err}{
Error accepted in PL (in mm). This is used to remove from the analsis animals bigger than the target specimen minus this error. If you do not want to remove bigger specimens, add the argument err=9999. By default, err=3.
}
}
\details{
The function also make csv files of each turtle to identify, named "turtle_1.csv", "turtle_2.csv"... where all the reference database is ordered by the RMSD value.
Date column must be formatted as Date, ID column as character, and the rest of columns as Numeric
The important columns for this function are "Date","ID","PL","GuL","HumL","PecL","AbdL","FemL" and "AnL". If you use different names these must be declared as arguments in the function
}
\value{
The function returns a data.frame with 7 columns:
 - TargetID: Is the provisional ID of each turtle to identify
 - Rank: The rank in similitude with the turtle to identify of the candidate turtle in the reference database
 - CandidateID: Is the ID of the candidate turtle of the reference database
 - Date: The date when the candidate turtle was measured
 - PLNew: The plastral length of the turtle to identify
 - PLDif: The difference between the turtle to identify and the candidate turtle
 - RMSE: The RMSE between the turtle to identify and the candidate turtle
The fast visualization of the data.frame can make the dismissal of some candidate turtles because a too bigger difference in PL in few time or other logical reasons which make easy to recognize if the new turtle is already in the database or not.
The identification of the turtle with this function should be confirmed with photographs.
}
\references{
Valdeon, A., Longares, L.A. (2015) IDTurtle: A new and safe method for individual turtle identification using R. (to complete once the article is accepted)
}
\author{
Aitor Valdeon <emys@galapagosdenavarra.com>
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
# If you want 20 candidate turtles per turtle to identify instead 10 in the object identity:
identity<-turtle.idturtle(data.comp,data.ref,date="Fecha",lim=20)
}
\keyword{ turtle }
\keyword{ biometry }
\keyword{ identification }