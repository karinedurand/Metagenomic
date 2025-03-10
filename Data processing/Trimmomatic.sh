#!/bin/bash
#SBATCH -p workq
# Load the Trimmomatic module (version 0.39) in the computing environment
module load bioinfo/Trimmomatic/0.39

# Run Trimmomatic with paired-end mode (PE) to trim sequencing reads
java -jar $TRIM_HOME/trimmomatic.jar PE \
    Mock5M_R1.fastq Mock5M_R2.fastq \       # Input files: Forward (R1) and Reverse (R2) reads
    s1_pe s1_se s2_pe s2_se \                          # Output files (paired and unpaired reads)
    ILLUMINACLIP:$TRIM_HOME/adapters/TruSeq3-PE.fa:2:30:10 \  # Adapter trimming settings
    SLIDINGWINDOW:4:15 \                               # Sliding window trimming with size 4 and quality threshold 15
    MINLEN:36                                          # Discard reads shorter than 36 bases
