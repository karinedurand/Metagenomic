#!/bin/bash
#SBATCH -p dgimi-eha
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=100G

# Création du répertoire de sortie
mkdir -p "$OUTPUT_DIR"


checkm lineage_wf -x fasta -t 16 /lustre/durandk/Mock2/metebat2/bin/ /lustre/durandk/Mock2/"$OUTPUT_DIR"


