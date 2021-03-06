% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/format_COSMOS_results.R
\name{format_COSMOS_res}
\alias{format_COSMOS_res}
\title{format_COSMOS_res}
\usage{
format_COSMOS_res(
  cosmos_res,
  metab_mapping,
  gene_mapping = "org.Hs.eg.db",
  measured_nodes,
  omnipath_ptm
)
}
\arguments{
\item{cosmos_res}{results of CARNIVAL run}

\item{metab_mapping}{a named vector with pubchem cid as names and desired metabolite names as values.}

\item{gene_mapping}{by default, use the 'org.Hs.eg.db' to map gene names. Can also be a named vector with entrez gene id as names and desired gene names as values.}

\item{measured_nodes}{vector of nodes that are measured or inputs}

\item{omnipath_ptm}{ptms database from OmnipathR}
}
\value{
list with network and attribute tables.
}
\description{
formats the network with readable names
}
\examples{
CARNIVAL_options <- cosmosR::default_CARNIVAL_options()
CARNIVAL_options$solver <- "lpSolve"
data(toy_network)
data(toy_signaling_input)
data(toy_metabolic_input)
data(toy_RNA)
test_for <- preprocess_COSMOS_signaling_to_metabolism(meta_network = toy_network,
signaling_data = toy_signaling_input,
metabolic_data = toy_metabolic_input,
diff_expression_data = toy_RNA,
maximum_network_depth = 15,
remove_unexpressed_nodes = TRUE,
CARNIVAL_options = CARNIVAL_options
)
test_result_for <- run_COSMOS_signaling_to_metabolism(data = test_for,
CARNIVAL_options = CARNIVAL_options)
data(metabolite_to_pubchem)
data(omnipath_ptm)
test_result_for <- format_COSMOS_res(test_result_for,
metab_mapping = metabolite_to_pubchem,
measured_nodes = unique(c(names(toy_metabolic_input),
                          names(toy_signaling_input))),
omnipath_ptm = omnipath_ptm)
}
