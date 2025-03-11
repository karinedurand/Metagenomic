#!/bin/bash
#SBATCH -p dgimi-eha
#SBATCH --mem=10G

DIR="/Mock1/MAG/"

for FILE in "$DIR"bin.*; do
    ./skani search "$FILE" -d gtdb_skani_database_ani
done
