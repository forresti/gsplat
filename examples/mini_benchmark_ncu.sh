# eval only

ncu_out_fname=my_profile_ncu_OUTPUTS_PER_THREAD_8_more_metrics

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
    --max_eval_steps 2 \
    --rasterization_algo "multiple_output"

ncu --import ${ncu_out_fname}.ncu-rep --details > ${ncu_out_fname}.txt


    #     --metrics sm__cycles_active.avg,sm__warps_active.avg.pct_of_peak_sustained_active,sm__inst_executed.sum \
    # --metrics sm__cycles_active.avg,sm__warps_active.avg.pct_of_peak_sustained_active,sm__inst_executed.sum,smsp__pipe_alu_cycles_active.avg,smsp__pipe_fma_cycles_active.avg,smsp__pipe_tensor_cycles_active.avg,smsp__threads_launched.avg,tpc__sm_rf_registers_allocated_realtime.avg,tpc__sm_rf_registers_allocated.avg,tpc__average_registers_per_thread.avg \
