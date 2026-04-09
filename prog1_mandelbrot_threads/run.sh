#!/bin/bash
#SBATCH --job-name=mandelbrot
#SBATCH --account=project_2018477
#SBATCH --partition=small
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=00:15:00
#SBATCH --output=results_baseline.txt

module load gcc

for i in 1 2 3 4 5 6 7 8; do
    ./mandelbrot --threads $i
done

echo "--- VIEW 2 ---"

for i in 1 2 3 4 5 6 7 8; do
    ./mandelbrot --view 2 --threads $i
done