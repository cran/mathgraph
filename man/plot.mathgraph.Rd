\name{plot.mathgraph}
\alias{plot.mathgraph}

\title{ Plot a Mathematical Graph }
\description{
  Very crude plotting method for \code{mathgraph} class.
}
\usage{
\method{plot}{mathgraph}(x, ...)
}

\arguments{
  \item{x}{ an object that inherits from \code{mathgraph}. }
  \item{\dots}{ graphics parameters may be given. }
}
\details{
  A representation of the mathematical graph is produced on
  the current graphics device.
}
%\value{
%}
\references{ S Poetry, Patrick J. Burns, Section 13.3 }
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\section{BUGS }{Needs to be smarter, and allow the user some control.}

\seealso{ \code{\link{mathgraph}}, \code{\link{plot}}, \code{\link{par}} }

\examples{
plot(mathgraph(~ 1:3 * 2:4), main="Graph K4")
}
\keyword{ hplot }
\keyword{ math }
