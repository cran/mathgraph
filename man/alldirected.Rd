\name{alldirected}
\alias{alldirected}
\alias{alldirected.mathgraph}
\alias{alldirected.default}

\title{ Transform to Directed Graph }
\description{
  Returns a \code{"mathgraph"} object which has all edges directed.
}
\usage{
alldirected(x, ...)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{ an object representing a mathematical graph. }
  \item{\dots}{ other arguments for derived functions. }
}
\details{
  The default method merely creates an error.
}
\value{
  A \code{"mathgraph"} object with any undirected edges in the 
  input split into two arcs.
}
\references{ S Poetry, Patrick J. Burns, Section 13.3, p. 305 }
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{mathgraph}} }

\examples{
my.graph <- mathgraph(~ 1:3 / 2:4) # undirected graph with 3 edges
alldirected(my.graph) # directed graph with 6 arcs

}
\keyword{ math }
