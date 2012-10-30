\name{stable.apply}
\alias{stable.apply}

\title{ Apply with Stable Dimensions }
\description{
  Does the same thing as \code{apply} except that when the function returns a
  vector, the dimensions are put back the way they started.
}
\usage{
stable.apply(X, MARGIN, FUN, ...)
}

\arguments{
  \item{X}{ same as in \code{apply}. }
  \item{MARGIN}{ same as in \code{apply}. }
  \item{FUN}{ same as in \code{apply}. }
  \item{\dots}{ same as in \code{apply}. }
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
  When \code{FUN} returns a scalar or when \code{MARGIN} has a length 
  that is not one less than the number of dimensions in \code{X}, then 
  the same as \code{apply}.

  Otherwise, an array similar to the result of \code{apply}, but with the 
  dimensions permuted to correspond to the dimensions of \code{X}.
}
\references{ S Poetry, Patrick J. Burns, 
	\url{http://www.burns-stat.com/pages/spoetry.html}
}
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{apply}}, \code{\link{aperm}} }

\examples{
data(freeny)
stable.apply(freeny.x, 1, sort)
# compare to:
apply(freeny.x, 1, sort)

}
\keyword{ array }
