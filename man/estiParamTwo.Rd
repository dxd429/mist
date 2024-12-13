% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/estiParamTwo.R
\name{estiParamTwo}
\alias{estiParamTwo}
\title{Parameter Estimation for Two-Group Scenario}
\usage{
estiParamTwo(Dat_sce, Dat_name_g1, Dat_name_g2, ptime_name_g1, ptime_name_g2)
}
\arguments{
\item{Dat_sce}{A \code{SingleCellExperiment} object containing the single-cell DNA methylation level.
Methylation levels should be stored as assays, with genomic feature (gene) names in rownames
and cells in colnames.}

\item{Dat_name_g1}{A character string specifying the name of the assay to extract the group 1 methylation level data.}

\item{Dat_name_g2}{A character string specifying the name of the assay to extract the group 2 methylation level data.}

\item{ptime_name_g1}{A character string specifying the name of the column in \code{colData} for the group 1 pseudotime vector.}

\item{ptime_name_g2}{A character string specifying the name of the column in \code{colData} for the group 2 pseudotime vector.}
}
\value{
A list containing two elements, one for each group, where each element is a numeric list of estimated
parameters for all genomic features. Each element includes:
\itemize{
\item \eqn{\beta_0} to \eqn{\beta_4}: Estimated coefficients for the polynomial of degree 4.
\item \eqn{\sigma^2_1} to \eqn{\sigma^2_4}: Estimated variances for each stage along the pseudotime.
}
}
\description{
This function performs the Gibbs sampling procedure based on hierarchical Bayesian modeling,
separately for two groups, to produce the parameters required for differential methylation analysis.
}
\examples{
library(SingleCellExperiment)
data <- readRDS(system.file("extdata", "small_sampleData_sce.rds", package = "mist"))
beta_sigma_list_group <- estiParamTwo(
    Dat_sce = data,
    Dat_name_g1 = "Methy_level_group1",
    Dat_name_g2 = "Methy_level_group2",
    ptime_name_g1 = "pseudotime",
    ptime_name_g2 = "pseudotime_g2"
)
}
