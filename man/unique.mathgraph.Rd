\name{unique.mathgraph}
\alias{unique.mathgraph}

\title{ Unique Edges of a Mathematical Graph }
\description{
  Returns a \code{mathgraph} object that may have fewer edges than the input.
}
\usage{
\method{unique}{mathgraph}(x, incomparables = FALSE, ...)
}

\arguments{
  \item{x}{ an object that inherits from \code{mathgraph}. }
  \item{incomparables}{ a vector of values that cannot be compared. 
	The only possible value is \code{FALSE}, meaning that all
	values can be compared.
  }
  \item{\dots}{ other arguments for generic function. }
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
  An object that is the same class as the input \code{x}, but redundant edges
  are removed.
}
\references{ S Poetry, Patrick J. Burns, Section 13.3 }
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{mathgraph}} }

\examples{
unique( c(mathgraph(~ 1:2*2:3), mathgraph(~ 1/3)) )
}
\keyword{ math }
\keyword{ methods }
