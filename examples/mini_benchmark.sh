
# eval only

# export TORCH_CUDA_ARCH_LIST=8.6

CUDA_LAUNCH_BLOCKING=1 python simple_trainer.py \
    --data_dir ../../gaussian_splat_data/360_v2/bicycle/ \
    --data_factor 4 \
    --result_dir ./results/bicycle \
    --max_steps 7000 \
    --disable_viewer \
    --ckpt results/bicycle/ckpts/ckpt_6999.pt \
    --rasterization_algo "load_balance_v1"
