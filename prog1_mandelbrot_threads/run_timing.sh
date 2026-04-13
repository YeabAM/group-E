#!/bin/bash
#SBATCH --job-name=mandelbrot_timing
#SBATCH --account=project_2018477
#SBATCH --partition=small
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=00:05:00
#SBATCH --output=results_timing.txt
lscpu | grep -E "Model name|Socket|Core|Thread|avx"
module load gcc

./mandelbrot --threads 3