#!/bin/bash

# This script converts a PyTorch model to a Hugging Face model.
# The converted model is saved in the same directory as the original model.
# The script is used in the following command:
export MASTER_ADDR="localhost"
export MASTER_PORT=12345
export WORLD_SIZE=1
export RANK=0

xtuner convert pth_to_hf \
./work_dirs/sft_deepseek.py \
./work_dirs/iter_600.pth \
./work_dirs \
--max-shard-size 8GB
