\name{commontail}
\alias{commontail}

\title{ Common Strings in Tail }
\description{
  Takes a list of character vectors and returns the longest vector
  of strings that is common to the ends of all of the components in the list.
}
\usage{
commontail(x)
}

\arguments{
  \item{x}{ list of character vectors. }
}
\details{
  This is useful to get the class that is common to a number of objects.
}
\value{
  a character vector containing the common elements of the tails
  of all the components in \code{x}.\cr
  The result is \code{NULL} if there are no common elements.
}
\references{ S Poetry, Patrick J. Burns }
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{inherits}}, \code{\link{intersect}} }

\examples{
commontail(list(c("subA", "cls1"), c("subB", "subA", "cls1")))
commontail(list(c("subA", "cls2"), c("subB", "subA", "cls1")))
}
\keyword{ programming }
\keyword{ methods }
