\name{adjamat}
\alias{adjamat}
\alias{adjamat.mathgraph}
\alias{is.adjamat}

\title{ Adjacency Matrix of a Mathematical Graph }
\description{
  Returns an object of class \code{"adjamat"} which is the adjacency 
  matrix of a numbered graph.
}
\usage{
adjamat(x, \dots)
\method{adjamat}{mathgraph}(x, general=FALSE, \dots)

is.adjamat(x)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{ an object of class \code{"mathgraph"}. }
  \item{general}{ logical flag, if \code{TRUE}, then multiple edges or 
	arcs between the same nodes are counted; otherwise, there is 
	a \code{1} no matter how many edges or arcs there are.
  }
  \item{\dots}{ other arguments for generic function. }
}
\details{
  \code{adjamat} is a generic function with a method for 
  class \code{"mathgraph"}.
}
\value{
  An object of class \code{"adjamat"} which is a square matrix with as many 
  rows and columns as there are nodes in the numbered graph.\cr
  The \code{i},\code{j} element is an indicator of an arc from 
  node \code{i} to node \code{j}.
  An undirected edge between nodes \code{i} and \code{j} contributes 
  a \code{1} to both the \code{i},\code{j} element and 
  the \code{j},\code{i} element.

  \code{is.adjamat} is the membership function for this class.
}
\references{ Chachra, V., Ghare, P. M. and Moore, J. M. (1979). 
	Applications of Graph Theory Algorithms.
	Elvesier North Holland, New York.

	Harary, Frank (1969). Graph Theory, p. 158.
	Addison Wesley.
}
\author{ Nick Efthymiou }
\note{ S Poetry, Patrick J. Burns, \url{http://www.burns-stat.com/pages/spoetry.html} }

\section{BUGS }{The \code{general} argument to \code{adjamat.mathgraph} is not 
functional.} 

\seealso{ \code{\link{mathgraph}}, \code{\link{incidmat}}, 
\code{\link{getpath.adjamat}} }

\examples{
adjamat(mathgraph(~ 1:3 * 3:5, dir=TRUE))
}
\keyword{ math }
