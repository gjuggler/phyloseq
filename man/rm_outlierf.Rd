\name{rm_outlierf}
\alias{rm_outlierf}
\title{Set to FALSE any outlier species greater than f fractional abundance.}
\usage{
  rm_outlierf(f, na.rm=TRUE)
}
\arguments{
  \item{f}{Single numeric value between 0 and 1. The
  maximum fractional abundance value that a taxa will be
  allowed to have in a sample without being marked for
  trimming.}

  \item{na.rm}{Logical. Should we remove NA values. Default
  \code{TRUE}.}
}
\value{
  A function (enclosure), suitable for
  \code{\link{filterfun_sample}}.
}
\description{
  This is for removing overly-abundant outlier taxa, not
  for trimming low-abundance taxa.
}
\examples{
t1 <- 1:10; names(t1)<-paste("t", 1:10, sep="")
rm_outlierf(0.15)(t1)
## Use simulated abundance matrix
# set.seed(711)
# testOTU <- otu_table(matrix(sample(1:50, 25, replace=TRUE), 5, 5), taxa_are_rows=FALSE)
# taxa_sums(testOTU)
# f1  <- filterfun_sample(rm_outlierf(0.1))
# (wh1 <- genefilter_sample(testOTU, f1, A=1))
# wh2 <- c(T, T, T, F, F)
# prune_taxa(wh1, testOTU)
# prune_taxa(wh2, testOTU)
}
\seealso{
  \code{\link{topk}}, \code{\link{topf}},
  \code{\link{topp}}, \code{\link{rm_outlierf}}
}

