#!/bin/bash
#SBATCH --job-name=jupyter
#SBATCH --partition gpu
#SBATCH --mem=40G
#SBATCH --time=05:00:00
#SBATCH --nodelist=smp-6-4

# Load the necessary modules
module load anaconda3/5.2.0
module load cuda
eval "$(conda shell.bash hook)"
conda activate server

# launch a jupyter instance
ip addr > notebook.txt
jupyter-notebook