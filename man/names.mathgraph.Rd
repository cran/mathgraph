\name{names.mathgraph}
\alias{names.mathgraph}
\alias{names<-.mathgraph}

\title{ Edge Names in a Mathematical Graph }
\description{
  Sets or returns the names (corresponding to the edges) of a mathematical
  graph represented by a \code{mathgraph} object.
}
\usage{
\method{names}{mathgraph}(x)
\method{names}{mathgraph}(x) <- value
}

\arguments{
  \item{x}{ an object inheriting from \code{mathgraph}. }
  \item{value}{ a value to be assigned to the names of the \code{mathgraph}. }
}
\details{
  In the assignment form, the names are created or changed.
}
\value{
  Character vector of the names.
}
\references{ S Poetry, Patrick J. Burns, Section 13.3 Mathematical Graphs, 
	\url{http://www.burns-stat.com/pages/spoetry.html}
}
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{mathgraph}} }

\examples{

jjm <- mathgraph(~ 1:3 * 2:4)
jjm
names(jjm) <- letters[1:length(jjm)]
jjm
names(jjm)

}
\keyword{ math }
