# eval only

ncu_out_fname=my_profile_dummy_rasterization_kernel

ncu --target-processes all --nvtx \
    --force-overwrite \
    -o ${ncu_out_fname} \
    python simple_trainer.py \
    --data_dir ../../gaussian_splat_data/360_v2/bicycle/ \
    --data_factor 4 \
    --result_dir ./results/bicycle \
    --max_steps 7000 \
    --disable_viewer \
    --ckpt results/bicycle/ckpts/ckpt_6999.pt \
    --max_eval_steps 3


ncu --import ${ncu_out_fname}.ncu-rep --details > ${ncu_out_fname}.txt


    #     --metrics sm__cycles_active.avg,sm__warps_active.avg.pct_of_peak_sustained_active,sm__inst_executed.sum \
    # --metrics sm__cycles_active.avg,sm__warps_active.avg.pct_of_peak_sustained_active,sm__inst_executed.sum,smsp__pipe_alu_cycles_active.avg,smsp__pipe_fma_cycles_active.avg,smsp__pipe_tensor_cycles_active.avg \
