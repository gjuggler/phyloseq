\name{taxa_sums}
\alias{speciesSums}
\alias{taxa_sums}
\title{Returns the total number of individuals observed from each species/taxa/OTU.}
\usage{
  taxa_sums(x)

  speciesSums(x)
}
\arguments{
  \item{x}{\code{\link{otu_table-class}}, or
  \code{\link{phyloseq-class}}.}
}
\value{
  A \code{\link{numeric-class}} with length equal to the
  number of species in the table, name indicated the taxa
  ID, and value equal to the sum of all individuals
  observed for each taxa in \code{x}.
}
\description{
  A convenience function equivalent to rowSums or colSums,
  but where the orientation of the otu_table is
  automatically handled.
}
\examples{
data(enterotype)
taxa_sums(enterotype)
data(esophagus)
taxa_sums(esophagus)
}
\seealso{
  \code{\link{sample_sums}}, \code{\link{rowSums}},
  \code{\link{colSums}}
}

