\name{getpath}
\alias{getpath}
\alias{getpath.mathgraph}
\alias{getpath.incidmat}
\alias{getpath.adjamat}
\alias{getpath.default}

\title{ Find a Path in a Mathematical Graph }
\description{
  Returns a path, if it exists, from the \code{start} to the \code{end}.
}
\usage{
getpath(x, start, end, \dots)
\method{getpath}{mathgraph}(x, start, end, \dots)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{x}{ an object representing a mathematical graph. }
  \item{start}{ character string or integer giving the starting node. }
  \item{end}{ character string or integer giving the ending node. }
  \item{\dots}{ generic arguments. }
}
\details{
  \code{getpath} is a generic function with methods for
  \code{"mathgraph"}, \code{"incidmat"} and \code{"adjamat"}.
  The default method converts \code{x} to class \code{"incidmat"}.

  \code{getpath.adjamat} is an implementation of algorithm 2.2 in Chachra, 
  Ghare and Moore (1979) and \code{getpath.incidmat} is an implementation 
  of their algorithm 2.3.

  The distinction between non-existent paths and paths of length zero
  may be useful in some situations.
}
\value{
  When at least one path exists, a \code{"mathgraph"} object containing 
  the edges within the first path found; 
  this may be an empty mathgraph if \code{start} and \code{end} are equal.\cr
  When no path exists, returns \code{NULL}. 
}
\references{ Chachra, V., Ghare, P. M. and Moore, J. M. (1979). 
	Applications of Graph Theory Algorithms.
	Elvesier North Holland, New York.
}
\author{ Nick Efthymiou }
\note{ S Poetry, Patrick J. Burns, Section 13.3 }

\seealso{ \code{\link{mathgraph}}, \code{\link{incidmat}}, 
\code{\link{adjamat}} }

\examples{
getpath(mathgraph(~ 1:3 / 3:5), 1, 5) # returns a path
getpath(mathgraph(~ 1:3 / 3:5), 1, 4) # no path, returns NULL
getpath(mathgraph(~ 1:3 / 3:5), 1, 1) # returns mathgraph()

}
\keyword{ math }
