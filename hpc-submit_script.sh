#!/bin/bash -l
#PBS -N myJobAPGeM
#PBS -l walltime=12:00:00
#PBS -l mem=10gb
#PBS -l ncpus=1
#PBS -l ngpus=1
cd /work/qvpr/workspace/deep-image-retrieval/
export DB_ROOT=0
conda activate /work/qvpr/workspace/tf_playground/envs/netvlad20
python -m dirtorch.extract_features --dataset "ImageList('$imgList')" --checkpoint ./models/Resnet-101-AP-GeM.pt --gpu 0 --output $outFullPath


