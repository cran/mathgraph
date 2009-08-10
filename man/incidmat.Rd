\name{incidmat}
\alias{incidmat}
\alias{incidmat.mathgraph}
\alias{is.incidmat}

\title{ Incidence Matrix for a Mathematical Graph }
\description{
  Returns an object of class \code{"incidmat"} which is a matrix indicating
  the start and end node for each edge in the graph.
}
\usage{
incidmat(x, \dots)
\method{incidmat}{mathgraph}(x, expand=TRUE, general=FALSE, \dots)

is.incidmat(x)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{ object representing a mathematical graph. }
  \item{expand}{ logical flag: if \code{TRUE}, then undirected edges are 
	represented by two columns in the output.\cr
	If \code{FALSE}, then both non-zero elements of an undirected edge 
	are positive.
  }
  \item{general}{ logical flag: if \code{TRUE}, then there is a non-zero 
	entry in a column representing a loop.
  }
  \item{\dots}{ generic arguments. }
}
\details{
  The \code{incidmat} function is generic, with a method for 
  class \code{"mathgraph"}.

  \code{is.incidmat} is the membership function for this class.
}
\value{
  an object of class \code{"incidmat"} which is a matrix with rows representing
  nodes and columns representing edges.\cr
  Generally speaking, there is a \code{1} in the location where an edge begins
  and a \code{-1} in the location where it ends.\cr
  Frank Harary defines incidence matrix with expand = \code{FALSE}.
}
\references{ Chachra, V., Ghare, P. M. and Moore, J. M. (1979). 
Applications of Graph Theory Algorithms.
Elvesier North Holland, New York.

Harary, Frank (1969). Graph Theory, p. 160.
Addison Wesley.

}
\author{ Nick Efthymiou }
\note{ From S Poetry, Patrick J. Burns, Section 13.3, p. 312 
	\url{http://www.burns-stat.com/pages/spoetry.html}
}

\seealso{ \code{\link{adjamat}}, \code{\link{mathgraph}},
\code{\link{getpath.incidmat}} }

\examples{
incidmat(mathgraph(~ 1:3 / 3:5, dir=TRUE))
incidmat(mathgraph(~ 1:3 / 3:5, dir=FALSE))
incidmat(mathgraph(~ 1:3 / 3:5, dir=FALSE), expand=FALSE)

}
\keyword{ math }
