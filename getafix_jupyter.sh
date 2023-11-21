#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=6
#SBATCH --mem-per-cpu=32G
#SBATCH --time=05:00:00

# Load the necessary modules
module load anaconda3/5.2.0
eval "$(conda shell.bash hook)"
module load starry
conda activate server

# launch a jupyter instance
ip addr > notebook.txt
jupyter-notebook