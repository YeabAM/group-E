#!/bin/bash
#SBATCH --job-name=sqrt
#SBATCH --account=project_2018832
#SBATCH --partition=small
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=00:05:00
#SBATCH --output=results_middle_case.txt
lscpu | grep -E "Model name|Socket|Core|Thread" | head -n 4


export PATH=$HOME/ispc-v1.20.0-linux/bin:$PATH

# Build
make


# Run
./sqrt --threads 8

# export PATH=$HOME/ispc-v1.20.0-linux/bin:$PATH

# ./main --threads 3