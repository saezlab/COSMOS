# cosmosR <img src="man/figures/logo.png" align="right" height="139">

<!-- badges: start -->
[![R-CMD-check](https://github.com/saezlab/cosmosr/workflows/R-CMD-check-bioc/badge.svg)](https://github.com/saezlab/cosmosr/actions)
<!-- badges: end -->

## Overview

COSMOS (Causal Oriented Search of Multi-Omic Space) is a method that integrates phosphoproteomics, transcriptomics, and metabolomics data sets. COSMOS leverages extensive prior knowledge of signaling pathways, metabolic networks, and gene regulation  with computational methods to estimate activities of transcription factors and kinases as well as network-level causal reasoning. This pipeline can provide mechanistic explanations for experimental observations across multiple omic data sets. 


<img src="man/figures/intro_data.png" align="center" width="800">

COSMOS uses [CARNIVAL](https://saezlab.github.io/CARNIVAL/)’s Integer Linear Programming (ILP) optimization strategy to find the smallest coherent subnetwork causally connecting as many deregulated TFs, kinases/phosphatases and metabolites as possible. The subnetwork is extracted from a novel integrated PKN (available [here](http://metapkn.omnipathdb.org/)) spanning signaling, transcriptional regulation and metabolism.  Transcription factors activities are inferred from gene expression with [DoRothEA](https://saezlab.github.io/dorothea/), a meta resource of TF/target links. Kinase activities are inferred from phosphoproteomic with a kinase/substrate network of [Omnipath](http://omnipathdb.org/), a meta resource of protein-protein. [CARNIVAL](https://saezlab.github.io/CARNIVAL/) was adapted to find mechanistic hypotheses connecting the TF and kinase activities with metabolites from a signaling/metabolic prior knowledge network combining [Omnipath](http://omnipathdb.org/), [STITCHdb](http://stitch.embl.de/) and [Recon3D](https://www.vmh.life/). 


You can also use COSMOS if you don't have metabolomic data, to connect TF activities (from transcriptomic) with kinase activities (from phosphoproteomic) for exmaple !

<img src="man/figures/graphical_abstract.png" align="center" width="800">

## Tutorial

Instal the package (from github with devtools) :

```r
## If needed instal devtool package
install.packages("devtools")

## instal COSMOS
library(devtools)
install_github("saezlab/COSMOS")
```

//!\\ Curently avalaible tutorial is available as self contain R script: https://github.com/saezlab/COSMOS/blob/master/tutorial.R
A markdown version is in preparation and arriving soon. 


//!\\ The tutorial.pdf is curently based on the paper version of CARNIVAL, which is the preprint version: https://github.com/saezlab/CARNIVAL/tree/package_paper_version

## Access

The meta PKN used with the biorXiv version of COSMOS is available [here](http://metapkn.omnipathdb.org/).

An updated meta PKN is available with the package (using meta_network in R)

## Citation
If you use cosmosR for your research please cite the [original publication](https://www.embopress.org/doi/full/10.15252/msb.20209730): 

> Dugourd A, Kuppe C, Sciacovelli M, Gjerga E, Gabor A, Emdal KB, Vieira V, Bekker-Jensen DB, Kranz J, Bindels EMJ, Jesper V Olsen, Christian Frezza, Rafael Kramann, Julio Saez-Rodriguez et al (2021) Causal integration of multi-omics data with prior knowledge to generate mechanistic hypotheses. Mol Syst Biol 17: e9730

## License

The code is distributed under the GNU General Public License v3.0. The meta PKN is distributed under the Attribution-NonCommercial 4.0 International (CC-BY-NC 4.0) License.
