\name{RMSD.idturtle}
\alias{RMSD.idturtle}
\title{
Compare by pairs all the measurements in the database
}
\description{
Create a dataframe with the RMSD of all the possible pairs of measurements. This is useful to plot a tree grouping the closests measurements. This tool allow an easy visualization of measurements far away to other from the same turtle, which can be errors in the identification or in the measurements.
}
\usage{
RMSD.idturtle(data, ID = "ID", date = "date", PL = "PL", GuL = "GuL", HumL = "HumL",
PecL = "PecL", AbdL = "AbdL", FemL = "FemL", AnL = "AnL")
}
\arguments{
  \item{data}{
Dataframe with the database of all the measurements of all the specimens
}
  \item{ID}{
Name of the identification code of the turtle column in both data.comp and data.ref
}
  \item{date}{
Name of the column with the date in both data.comp and data.ref
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
}
\value{
It returns a data frame with all the measurements sets of each turtle in each capture event in both row and columns as a 2D matrix. A clustering dendrogram can be plotted with the function cluster.RMSD
}
\author{
Aitor Valdeon
}
\note{
This is a time comsuming analysis which compare two by two all the possible pairs of measures of turtles, identifying each one with the ID followed by the date.
}
\examples{
#Charge and prepare example data
data(data.comp,data.ref)
comp<-data.comp[1:20,]
ref<-data.comp[!(1:nrow(data.comp)),]
cont<-0
repeat{
  cont<-cont+1
  r<-data.ref[data.ref$ID==comp[cont,c("ID")],]
  ref<-rbind(ref,r)
  if(cont==20){
    break
  }
}
data.RMSD<-rbind(comp,ref)
#Delete non-interesting objects for this action
rm(cont,r,data.comp,data.ref,comp,ref)
#Execute RMSD.idturtle. Column date in data.RMSD is named in spanish (Fecha)
RMSD<-RMSD.idturtle(data.RMSD,date="Fecha")
}
\keyword{ RMSD }
\keyword{ cluster }