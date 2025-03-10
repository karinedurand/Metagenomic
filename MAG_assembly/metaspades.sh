#!/bin/bash
#SBATCH -p dgimi-eha
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=16
#SBATCH --mem=100G

# Run metaSPAdes with specified options
metaspades.py \
    -12 Shotgun_Mock2.Trim_paired.gz \
    -t 16 \   
    -m 100  \
    --only-assembler
