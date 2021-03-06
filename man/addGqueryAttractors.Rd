% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/createQueryAttractors.R
\name{addGqueryAttractors}
\alias{addGqueryAttractors}
\title{Add target attractors to a Griffin query.}
\usage{
addGqueryAttractors(j.query, df.attr)
}
\arguments{
\item{j.query}{Griffin query}

\item{df.attr}{dataframe with attractors}
}
\value{
query java query to run Griffin
}
\description{
Add a dataframe with attractors to a Griffin query.
The function takes a dataframe with the attractors 
where the first column corresponds to the attractor number
and the second to the state, so that cyclic attractors can have multiple rows.
the rest of the columns corresponds to the nodes of the network
The valid values are:
   1: active
   0: inactive
   *: non-determined
}
\examples{
data("cellcycle")
topology <- getNetTopology(cellcycle)
cc.attr <- getAttractors(cellcycle)
cc.attr <- attractorToDataframe(cc.attr)

q <- createGqueryGraph(topology, cellcycle$genes)
q <- addGqueryAttractors(q, cc.attr)
print(q)

}
