% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/preparingData.R
\name{preparingData}
\alias{preparingData}
\title{preparingData for the miCILP2 data}
\usage{
preparingData(object, annotation, colname_reads = "", colname_C2T = "")
}
\arguments{
\item{object}{A GRanges object which should contain all single-
nucleotide peaks from the miCLIP2 experiment.}

\item{annotation}{A path to the annotation file. The format of the
annotation file should be a gff3 file and downloaded from
https://www.gencodegenes.org/}

\item{colname_reads}{The name of the metadata column which contains the
mean value of the truncation reads number without C to T transition
reads.}

\item{colname_C2T}{The name of the meta data column which contains the
mean value of C to T transition read counts.}
}
\value{
A GRanges object with all information that is required for running
    the m6Aboost model.
}
\description{
A function for calculating the relative signal strength and
    extract the features for running the m6Aboost.
}
\examples{
    testpath <- system.file("extdata", package = "m6Aboost")
    test_gff3 <- file.path(testpath, "test_annotation.gff3")
    test <- readRDS(file.path(testpath, "test.rds"))
    test<- preparingData(test, test_gff3, colname_reads="WTmean",
        colname_C2T="CtoTmean")

}
\author{
You Zhou
}
