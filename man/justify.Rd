\name{justify}
\alias{justify}

\title{ Justify Elements of a Vector }
\description{
  Returns a vector like the input, but each string may have added blank
  spaces at the start and/or end.
}
\usage{
justify(x, type = "r")
}

\arguments{
  \item{x}{ a character vector. }
  \item{type}{ a string giving the type of justification.\cr
	This may be an abbreviation of one of "right", "left", "center".
  }
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
  a character vector like x, except all elements have the same number
  of characters, and the text is lined up along one edge, or centered.
}
\references{ S Poetry, Patrick J. Burns }
\author{ Nick Efthymiou }
%\note{ ~~further notes~~ }

\seealso{ \code{\link{format}}, \code{\link{substring}}, 
\code{\link{paste}} }

\examples{
data(freeny)
as.matrix(justify(dimnames(freeny.x)[[2]], "r"))
as.matrix(justify(dimnames(freeny.x)[[2]], "l"))
as.matrix(justify(dimnames(freeny.x)[[2]], "c"))
}
\keyword{ character }
