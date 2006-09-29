\name{sortmathgraph}
\alias{sortmathgraph}

\title{ Sort a Mathematical Graph }
\description{
  Sorts nodes within undirected edges and/or edges by nodes.
}
\usage{
sortmathgraph(x, nodes = TRUE, edges = TRUE)
}

\arguments{
  \item{x}{ an object that inherits from \code{mathgraph}. }
  \item{nodes}{ logical value; if \code{TRUE}, then the nodes within 
	undirected edges are sorted. 
  }
  \item{edges}{ logical value; if \code{TRUE}, then the edges are sorted by 
	the first node with ties broken by the second node.
  }
}
%\details{
%  ~~ If necessary, more details than the __description__  above ~~
%}
\value{
  an object that represents the same graph as the input, but with
  some rearrangement.
}
\references{ S Poetry, Patrick J. Burns, Section 13.3; 
	\url{http://www.burns-stat.com/pages/spoetry.html}
}
\author{ Nick Efthymiou }
% \note{ ~~further notes~~ }

\seealso{ \code{\link{mathgraph}} }

\examples{
jjmg <- c(mathgraph(~ 4:2 * 1:3), mathgraph(~ 3:5 / 1:3))
sortmathgraph(jjmg)
sortmathgraph(jjmg, node=FALSE)
sortmathgraph(jjmg, edge=FALSE)

}
\keyword{ math }
