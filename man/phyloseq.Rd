\name{phyloseq}
\alias{phyloseq}
\title{Build phyloseq-class objects from their components.}
\usage{
  phyloseq(...)
}
\arguments{
  \item{...}{One or more component objects among the set of
  classes defined by the phyloseq package, as well as
  \code{phylo}-class (defined by the
  \code{\link{ape-package}}). Each argument should be a
  different class. For combining multiple components of the
  same class, or multiple phyloseq-class objects, use the
  \code{\link{merge_phyloseq}} function. Unlike in earlier
  versions, the arguments to phyloseq do not need to be
  named, and the order of the arguments does not matter.}
}
\value{
  The class of the returned object depends on the argument
  class(es). For an experiment-level object, two or more
  component data objects must be provided. Otherwise, if a
  single component-class is provided, it is simply returned
  as-is. The order of arguments does not matter.
}
\description{
  \code{phyloseq()} is a constructor method, This is the
  main method suggested for constructing an
  experiment-level (\code{\link{phyloseq-class}}) object
  from its component data (component data classes:
  \code{\link{otu_table-class}},
  \code{\link{sample_data-class}},
  \code{\link{taxonomyTable-class}},
  \code{\link{phylo-class}}).
}
\examples{
#
# # data(GlobalPatterns)
# # GP <- GlobalPatterns
# # phyloseq(sample_data(GP), otu_table(GP))
# # phyloseq(otu_table(GP), phy_tree(GP))
# # phyloseq(tax_table(GP), otu_table(GP))
# # phyloseq(phy_tree(GP), otu_table(GP), sample_data(GP))
# # phyloseq(otu_table(GP), tax_table(GP), sample_data(GP))
# # phyloseq(otu_table(GP), phy_tree(GP), tax_table(GP), sample_data(GP))
}
\seealso{
  \code{\link{merge_phyloseq}}
}

