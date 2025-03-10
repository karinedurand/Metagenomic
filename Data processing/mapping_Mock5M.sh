#!/bin/bash
#SBATCH -p workq
module load bioinfo/samtools/1.10
module load bioinfo/bowtie/2.3.5.1

# Use Bowtie2 to align reads to the genomic reference index
bowtie2 -x /save/user/kdurand/ref/sfC.ver7 \  # Path to the genomic reference index
        -U Mock5M.Trim_paired.fastq.gz \  # Path to the paired FASTQ file containing forward and reverse reads
        |  # Pass Bowtie2 output to Samtools
samtools view -f 4 \  # Filter out unpaired alignments
              -b -h \  # Convert SAM file to BAM format, keep headers
              -o Mock5M_nofrugi.raw.bam  # Path to save results in a BAM file

# Sort paired read alignment .bam file (sort by name -n)
samtools sort -n Mock5M_nofrugi.raw.bam -o Mock5M_nofrugi_sorted.bam

# Save fastq reads in separate R1 and R2 files
samtools fastq -@ 8 Mock5M_nofrugi_sorted.bam \
               -1 Mock5M_nofrugi_R1.fastq.gz \
               -2 Mock5M_nofrugi_R2.fastq.gz \
               -0 /dev/null \
               -s /dev/null \
               -n

