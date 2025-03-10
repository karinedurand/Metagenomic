#!/bin/bash
#SBATCH -p workq
#SBATCH --mem=50G
#Load modules
module load devel/Miniconda/Miniconda3
module load bioinfo/sourmash/4.8.6

# Loop over the range of numbers from 2 to 5
for i in {2..5}
do
  # Create a sketch for the DNA sequence using sourmash
  # The input is a FASTQ file and the output is a signature file
  sourmash sketch dna /work/user/kdurand/META2023/Mock$i"_results"/Mock$i.Trim_paired.fastq -p k=31 -o MOCK$i.sig0.zip

  # Gather the signatures from the sketch and a reference database
  # The output is a CSV file containing abundance information
  sourmash gather MOCK$i.sig0.zip genbank-2022.03-bacteria-k31.zip -k 31 -p abund -o MOCK$i.gather0.k31.csv

  # Perform taxonomic analysis on the gathered signatures
  # The output is a kreport file summarizing the taxonomic information
  sourmash tax metagenome --gather-csv MOCK$i.gather0.k31.csv --taxonomy genbank-2022.03-bacteria.lineages.csv --output-format kreport -o MOCK$i.gather.k31
done
