#!/bin/bash
#SBATCH -p workq
#SBATCH --cpus-per-task 10
#SBATCH --mem=100G

#Load modules
#Need Python, Kraken2
module load devel/python/Python-3.11.1 bioinfo/Kraken2/2.1.2
module load bioinfo/Bracken/2.8
module load bioinfo/Kraken2/2.1.2

bracken -d /usr/local/bioinfo/src/Bracken/example_on_cluster/minikraken2_v2_8GB_201904_UPDATE -i KRAKEN_Mock5M.report -o bracken.Shotgun_Mock5M.txt -l S
