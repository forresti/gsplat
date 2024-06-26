# eval only

nsys profile -w true -t cuda,nvtx,osrt,cudnn,cublas -s cpu  --capture-range=cudaProfilerApi  --cudabacktrace=true -x true -o my_profile \
    python simple_trainer.py \
    --data_dir ../../gaussian_splat_data/360_v2/bicycle/ \
    --data_factor 4 \
    --result_dir ./results/bicycle \
    --max_steps 7000 \
    --ckpt results/bicycle/ckpts/ckpt_6999.pt \
    --max_eval_steps 10