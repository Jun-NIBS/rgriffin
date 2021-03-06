% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/helperGriffin.R
\name{int2binState}
\alias{int2binState}
\title{Convert integer to binary state vector with node names.
'}
\usage{
int2binState(x, node.names)
}
\arguments{
\item{x}{input integer representing the state}

\item{node.names}{network node names}
}
\value{
Numeric binary vector of the same length as the number of nodes. Each 
    position corresponds to a node of the network. The values of each element 
    are 0 or 1. The name of each element corresponds to the name of the node in
    that position in the network.
}
\description{
Convert integer to binary state vector with node names.
'
}
\examples{
data(cellcycle)
int2binState(162,cellcycle$genes)

}
\seealso{
\code{\link{intToBits}} which this function wraps
}
\keyword{internal}
