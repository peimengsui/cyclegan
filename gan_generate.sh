#!/bin/bash
#
#SBATCH --job-name=myPythonJobGPU
#SBATCH --nodes=1
#SBATCH --cpus-per-task=2
#SBATCH --time=0:30:00
#SBATCH --mem=6GB
#SBATCH --mail-type=END
#SBATCH --mail-user=ps3336@nyu.edu
#SBATCH --output=slurm_%j.out
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu

module purge
module load python/intel/2.7.12
module load torchvision/0.1.7
pip install --user dominate
pip install --user builtins
pip install --user http://download.pytorch.org/whl/cu75/torch-0.1.12.post2-cp27-none-linux_x86_64.whl 

python gan_generate.py --dataroot ./datasets/faces_cyclegan --name faces_cyclegan --model cycle_gan --phase train --which_epoch 30 --display_id 0

