\name{print.mathgraph}
\alias{print.mathgraph}

\title{ Print a Mathematical Graph }
\description{
  Prints a representation of the graph.
}
\usage{
\method{print}{mathgraph}(x, prefix.node = if (is.character(xu)) "" else "node", ...)
}

\arguments{
  \item{x}{ an object inheriting from mathgraph which represents a 
	mathematical graph. 
  }
  \item{prefix.node}{ a string to put in front of each node named. 
	The default is an empty string if the nodes are character and the
	string "node" if they are not.
  }
  \item{\dots}{ other arguments to print may be given, but are not used. }
}
\details{
  The object is printed.\cr
  A `--' between nodes means an undirected edge, while a single
  arrow means a directed edge.
}
\value{
  the input x is returned invisibly.
}
\references{ S Poetry, Patrick J. Burns, Section 13.3, Mathematical Graphs }
\author{ Nick Efthymiou }
\note{ The format is consistent with the dot graph language. }

\seealso{ \code{\link{mathgraph}}, \code{\link{names.mathgraph}} }

\examples{
mathgraph(~ 1:3 / 2:4)
mathgraph(~ 1:3 / 2:4, dir=TRUE)
jjm <- mathgraph(~ letters[1:3] * letters[2:4])
jjm
names(jjm) <- LETTERS[1:9]
jjm

}
\keyword{ math }
