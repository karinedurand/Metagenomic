#!/bin/bash
#SBATCH -p workq
#SBATCH --mem=50G
#SBATCH --cpus-per-task=10

#Load modules
module load bioinfo/Kraken2/2.1.2


kraken2 --db /bank/kraken/Kraken2_Standard_Fev2019 --threads 10  --output Shotgun_Mock5M_nofrugi --report KRAKEN_Mock5M_nofrugi --unpaired Mock5M_nofrugi.Trim_paired.fastq
