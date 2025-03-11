# Overview

This document describes the steps performed for metagenomic assembly, binning, genome quality assessment, and taxonomic assignment corresponding to the study published under DOI XXX.

1. **Assembly and Binning**

- The sequencing reads were assembled using metaSPAdes v3.15.3.
  
- The resulting scaffolds were clustered into genome bins using MetaBAT2 v1.7.
  
- The completeness and contamination of these MAGs were evaluated using CheckM v1.0.18.
  
These analyses were performed within the KBase platform using its integrated tools.


2. **Taxonomic Assignment of MAGs**

- Skani.sh


3. **Taxonomic Profiling of Reads with k-mer methods**

Three methods were used for taxonomic classification of metagenomic reads:

- Kraken2.sh

- Bracken.sh

- Sourmash.sh
