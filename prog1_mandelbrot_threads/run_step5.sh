#!/bin/bash
#SBATCH --job-name=mandelbrot_step5
#SBATCH --account=project_2018477
#SBATCH --partition=small
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=00:05:00
#SBATCH --output=results_step5.txt

module load gcc

./mandelbrot --threads 16
./mandelbrot --view 2 --threads 16