\name{Documentation}
\alias{Documentation}
\title{
Retrieve Exported Functions from an R Package using LLM
}
\description{
Uses a locally-running LLM model via the \code{ellmer} package and \code{llama3.2:3b-instruct} from Ollama to generate a list of exported functions from a specified R package.
}
\usage{
Documentation(package_name)
}
\arguments{
  \item{package_name}{
A character string specifying the name of the R package for which to retrieve exported functions.
}
}
\details{
This function uses the \code{ellmer} interface to interact with the Ollama language model. It programmatically queries the model to generate a list of functions exported by the given R package. The results are not guaranteed to be accurate and are intended as part of a prototype or research tool.
}
\value{
A character vector containing the names of the functions claimed to be exported by the queried package.
}
\references{
\url{https://cran.r-project.org/doc/manuals/r-devel/R-exts.html}
}
\author{
Mohammad Kazimuddin
}
\note{
This function is experimental and depends on local LLM inference via the Ollama system.
}
\seealso{
\code{\link{ellmer}}, \code{\link{ollama}}, \code{\link{llama3.2:3b-instruct}}
}
\examples{
## Not run:
Documentation("ggplot2")
}
\keyword{documentation}
\keyword{language-models}
\keyword{llm}
