\name{mathgraph}
\alias{mathgraph}
\alias{[.mathgraph}
\alias{[<-.mathgraph}
\alias{length.mathgraph}
\alias{c.mathgraph}
\alias{is.mathgraph}

\title{ Create Mathematical Graph }
\description{
  Create an object of class \code{"mathgraph"} which represents a 
  mathematical graph.
}
\usage{
mathgraph(formula, directed = FALSE, data = sys.parent())
\method{length}{mathgraph}(x)
\method{c}{mathgraph}(...)

is.mathgraph(x)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{formula}{ a formula containing just the right-side.\cr
	Special operators in the formula are \code{+} which separates 
	terms, \code{/} which puts an edge between corresponding 
	elements of the two vectors on which it is operating, 
	and \code{*} which puts an edge between every pair of elements
	in the two vectors on which it is operating.
  }
  \item{directed}{ logical flag: if \code{TRUE}, then all edges that 
	are created are directed, otherwise they are undirected.
  }
  \item{data}{ the frame in which to find objects referenced in the formula.
	This can be either the number of a memory frame, or a list or 
	data frame containing the data.
  }
  \item{\dots}{ objects to be concatenated. }
  \item{x}{ object of class \code{"mathgraph"}. }
}
\details{
  Mathematical graphs consist of a set of nodes (vertices) and edges.
  Edges go between two nodes.
  An edge that is directed is often called an arc.

  Terms in the formula (delimited by \code{+})
  may be either calls to \code{*} or \code{/}, or objects that
  are already of class \code{"mathgraph"}.

  Two other representations of graphs are adjacency matrices and incidence
  matrices.
  The functions to convert \code{"mathgraph"} objects to these 
  are \code{adjamat} and \code{incidmat}, respectively.
  Most algorithms for mathematical graphs are in terms of incidence matrices
  or adjacency matrices.

  The generic functions that have a method for class \code{"mathgraph"} include:
  \code{[}, \code{c}, \code{length}, \code{names}, \code{plot}, \code{print}, 
  \code{unique}.

  \code{is.mathgraph} is the membership function for this class.

}
\value{
  an object of class \code{mathgraph} which is a two-column matrix of nodes
  along with an additional attribute called \code{"directed"} which is a 
  logical vector stating whether or not each edge is directed.\cr
  An edge (row of the matrix) that is directed goes from the node in the first
  column to the node in the second column.
}
\references{ Chachra, V., Ghare, P. M. and Moore, J. M. (1979).
	Applications of Graph Theory Algorithms.
	Elvesier North Holland, New York.
}
\author{ Nick Efthymiou }
\note{ S Poetry, Patrick J. Burns, \url{http://www.burns-stat.com/pages/spoetry.html} 
}

\seealso{ \code{\link{adjamat}}, \code{\link{incidmat}}, \code{\link{getpath}} }

\examples{

mathgraph(~ 1:3 / 2:4) # graph with 3 edges
mathgraph(~ 1:3 * 2:4) # graph with 9 edges

mathgraph(~ 1:3 / 2:4, dir=TRUE) # directed graph with 3 edges

# graph with some edges directed, some not
c(mathgraph(~ 1:3 * 2:4), mathgraph(~ c(3,1) / c(2,4), dir=TRUE))

}
\keyword{ math }
