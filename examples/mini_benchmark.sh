
# eval only

cd ..
pip install -e .
cd examples

python simple_trainer.py \
    --data_dir ../../gaussian_splat_data/360_v2/bicycle/ \
    --data_factor 4 \
    --result_dir ./results/bicycle \
    --max_steps 7000 \
    --ckpt results/bicycle/ckpts/ckpt_6999.pt \
    --disable_viewer \
    --max_eval_steps 10

