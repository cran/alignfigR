% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/alignfigR.R
\name{plot_alignment}
\alias{plot_alignment}
\title{Plot a multiple sequence alignment}
\usage{
plot_alignment(seq_list, palette = NA, taxa = c(), columns = c(),
  exclude_taxa = FALSE, exclude_columns = FALSE,
  legend_title = "Character")
}
\arguments{
\item{seq_list}{Sequence list parsed using the function `read_alignment`}

\item{palette}{Named-array mapping sequence to color or a pre-defined color scheme (random, rainbow, etc.)}

\item{taxa}{Array of taxa (the actual labels, not order) intended to restrict figure to or to exclude from figure.}

\item{columns}{Array of columns (indexed from 1) intended to restrict figure to or to exclude from figure.}

\item{exclude_taxa}{Boolean argument indicating that taxa should be excluded from plot. Default: False}

\item{exclude_columns}{Boolean argument indicating that columns should be excluded from plot. Default: False}

\item{legend_title}{String determining title of legend. Default: "Character"}
}
\value{
ggplot object which may be saved or edited as desired
}
\description{
This function uses ggplot (in particular, w/ geom_rect) to plot a sequence alignment
}
\examples{
fasta_file <- system.file("extdata", "example.fasta", package = "alignfigR")
plot_frame <- read_alignment(file = fasta_file)
align_plot <- plot_alignment(plot_frame, "DNA")
align_plot <- plot_alignment(plot_frame, "protein")
align_plot <- plot_alignment(plot_frame, taxa = c("Cow", "Whale"), columns = c(1:25))
align_plot <- plot_alignment(plot_frame, taxa = c("Whale"), exclude_taxa = TRUE)
align_plot <- plot_alignment(plot_frame, legend_title = "") ## Remove the title
}
