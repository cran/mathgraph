\name{.find.I.of}
\alias{.find.I.of}

\title{ Find limits of I() in a String }
\description{
  Returns either \code{NULL} or a two-column matrix where each row gives the
  first and last character of a call to \code{I}.
}
\usage{
.find.I.of(string, nesting.ok = FALSE)
}

\arguments{
  \item{string}{ a single character string. }
  \item{nesting.ok}{ logical value: if \code{TRUE}, then all occurrences 
	are given.
	If \code{FALSE}, then calls to I within other calls to it are ignored.}
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
  a numeric matrix with two columns, or \code{NULL}.
  Each row represents one call to I.\cr
  The first column is the number of the character within the string that
  starts the call (i.e., the "I").\cr
  The second column is the number of the character within the string that
  ends the call (the ")").
}
\references{ S Poetry, Patrick J. Burns, Section 11.2, p. 280 }
\author{ Nick Efthymiou }
\note{ This is used by mathgraph functions, and is not meant for direct use. }
\section{BUGS}{Parentheses inside quotes in the call to I will confuse it.

One or more spaces after the "I" will cause the call to be unrecognized.
However, if the string is parsed and then deparsed, the space will go away.
}

\seealso{ \code{\link{build.mathgraph}} }

\examples{
.find.I.of("~ x + I(x^2)")
.find.I.of("~ x + I(x^2 + I(y^3))")
\dontrun{
.find.I.of("~ x + I(x^2 + I(y^3))", TRUE)
}
}
\keyword{ programming }
\keyword{ internal }
