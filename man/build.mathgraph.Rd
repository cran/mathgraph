\name{build.mathgraph}
\alias{build.mathgraph}

\title{ Internal Function for Mathematical Graphs }
\description{
  This is an internal function.
  It is not meant for direct use.
}
\usage{
build.mathgraph(formula, data)
}
%- maybe also `usage' for other objects documented here.
\arguments{
  \item{formula}{ see \code{mathgraph} }
  \item{data}{ see \code{mathgraph} }
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
%\value{
%}
\references{ S Poetry, Patrick J. Burns }
\author{ Nick Efthymiou }
\note{ Temporary objects may be left over when I() expressions are used.
	The following command cleans them: \cr
	rm(list=ls(pattern="Build.mathgraphI"))
}

\seealso{ \code{\link{mathgraph}} }

%\examples{
%}
\keyword{ internal }
