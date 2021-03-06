% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/signature.R
\name{degSignature}
\alias{degSignature}
\title{Plot gene signature for each group and signature}
\usage{
degSignature(counts, signature, group = NULL, metadata = NULL,
  slot = 1)
}
\arguments{
\item{counts}{expression data. It accepts bcbioRNASeq, DESeqDataSet and
SummarizedExperiment. As well, data.frame or matrix is supported, but
it requires metadata in that case.}

\item{signature}{data.frame with two columns: a) genes that match
row.names of counts, b) label to classify the gene inside a group.
Normally, cell tissue name.}

\item{group}{character in metadata used to split data into different
groups.}

\item{metadata}{data frame with sample information. Rownames
should match \code{ma} column names
row number should be the same length than p-values vector.}

\item{slot}{slotName in the case of SummarizedExperiment objects.}
}
\value{
ggplot plot.
}
\description{
Given a list of genes beloging to a different classes, like
markers, plot for each group, the expression values for all the samples.
}
\examples{
data(humanGender)
data(geneInfo)
degSignature(humanGender, geneInfo, group = "group")
}
