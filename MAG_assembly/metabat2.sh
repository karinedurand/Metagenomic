#!/bin/bash
#SBATCH -p dgimi-eha
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=100G
cd /lustre/durandk/Mock2/Metapasdes/
# MetaBAT2
metabat2 -i contigs.fasta -a coverage.txt -o bin  -t 16
