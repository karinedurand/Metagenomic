#!/bin/bash
#SBATCH -p workq

#Load modules
module load bioinfo/FastQC/0.12.1

fastqc Shotgun_Mock5M.Trim_paired.fastq.gz

