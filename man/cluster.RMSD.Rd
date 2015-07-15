\name{cluster.RMSD}
\alias{cluster.RMSD}
\title{
Plot a cluster dendrogram of RMSD data frame
}
\description{
Plot a cluster dendrogram of RMSD data frame
}
\usage{
cluster.RMSD(RMSD, method = "ward.D")
}
\arguments{
  \item{RMSD}{
RMSD data frame obtained with the function RMSD.idturtle
}
  \item{method}{
Method of clustering. See help of hclust function in package stats
}
}
\value{
Plot a clustering dendrogram using the RMSD values among pairs as the dissimilitude index. It also returns an object of the class 'hclust'
}
\author{
Aitor Valdeon
}
\note{
This function only prepare data to make an hclust analysis (package stats) and plot it. It is useful to visually see what turtles are similar among them and to detect some different measure which can be an error
}
\seealso{
\link{hclust}
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
#Plot cluster dendrogram
cluster.RMSD(RMSD)
}
\keyword{ hclust }
\keyword{ RMSD }
