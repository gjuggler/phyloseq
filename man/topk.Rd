\name{topk}
\alias{topk}
\title{Make filter fun. the most abundant \code{k} taxa}
\usage{
  topk(k, na.rm=TRUE)
}
\arguments{
  \item{k}{An integer, indicating how many of the most
  abundant taxa should be kept.}

  \item{na.rm}{A logical. Should \code{NA}s be removed.
  Default is \code{TRUE}.}
}
\value{
  Returns a function (enclosure) that will return TRUE for
  each element in the most abundant k values.
}
\description{
  Make filter fun. the most abundant \code{k} taxa
}
\examples{
## Use simulated abundance matrix
# set.seed(711)
# testOTU <- otu_table(matrix(sample(1:50, 25, replace=TRUE), 5, 5), taxa_are_rows=FALSE)
# f1  <- filterfun_sample(topk(2))
# wh1 <- genefilter_sample(testOTU, f1, A=2)
# wh2 <- c(T, T, T, F, F)
# prune_taxa(wh1, testOTU)
# prune_taxa(wh2, testOTU)
}
\seealso{
  \code{\link{topk}}, \code{\link{topf}},
  \code{\link{topp}}, \code{\link{rm_outlierf}}
}

