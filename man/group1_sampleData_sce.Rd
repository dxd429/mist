\docType{data}
\name{small_sampleData_sce_g2}
\alias{small_sampleData_sce_g2}
\title{Small Sample Single-Cell Data for Testing and Illustration}
\description{
  A small single-cell dataset for testing and illustration purposes, derived from the GEO dataset GSE121708. The data contains DNA methylation information from mouse gastrulation experiments at the single-cell level.
}

\format{
A \code{SingleCellExperiment} object containing:
\itemize{
  \item Metadata about cells and genes.
  \item DNA methylation levels across a subset of genes and cells.
}
}
\source{
The data originates from the GEO dataset GSE121708, as described in:
\enumerate{
  \item Argelaguet R, Clark SJ, Mohammed H, Stapel LC, et al. Multi-omics profiling of mouse gastrulation at single-cell resolution. Nature 2019 Dec;576(7787):487-491. PMID: 31827285.
  \item Kapourani CA, Argelaguet R, Sanguinetti G, Vallejos CA. scMET: Bayesian modeling of DNA methylation heterogeneity at single-cell resolution. Genome Biol 2021 Apr 20;22(1):114. PMID: 33879195.
}
}
\details{
\itemize{
  \item \strong{Data Processing Steps:}
  \enumerate{
    \item Annotation: Data was annotated using the mm10 reference genome.
    \item Data Cleaning: Genes expressed in less than 10\% of cells were removed, resulting in a scDNAm dataset containing 986 cells and 18,220 genes.
    \item Pseudotime Inference: Pseudotime was inferred using the default settings in Monocle3.
    \item Subsampling:
    \itemize{
      \item For illustration purposes (e.g., vignette generation), a random sample of 5 genes was selected to create \code{group1_sampleData_sce.rds}.
    }
  }
}
}
\examples{
file_path <- system.file("extdata", "group1_sampleData_sce.rds", package = "mist")
Dat_sce <- readRDS(file_path)
}
