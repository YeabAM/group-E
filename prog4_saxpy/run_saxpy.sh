#!/bin/bash
#SBATCH --job-name=saxpy
#SBATCH --account=project_2016769
#SBATCH --partition=small
#SBATCH --cpus-per-task=8
#SBATCH --mem=4G
#SBATCH --time=00:05:00
#SBATCH --output=/scratch/project_2016769/z_parallel_programming/assignment1/group-E/prog4_saxpy/results_saxpy.txt

lscpu | grep -E "Model name|Core\(s\) per socket|Socket\(s\)|Thread"
module load gcc 2>/dev/null

export PATH=/scratch/project_2016769/z_parallel_programming/assignment1/group-E/ispc-v1.24.0-linux/bin:$PATH

cd /scratch/project_2016769/z_parallel_programming/assignment1/group-E/prog4_saxpy
make
./saxpy