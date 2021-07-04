#! /bin/bash
./run_clm_flax_neo.py \
    --output_dir $HOME/gpt-neo-125M-code-clippy \
    --model_name_or_path="EleutherAI/gpt-neo-125M" \
    --dataset_name="code_search_net" \
    --dataset_config_name="python" \
    --do_train --do_eval \
    --block_size="128" \
    --per_device_train_batch_size="64" \
    --per_device_eval_batch_size="128" \
    --learning_rate="5e-3" \
    --warmup_steps="1000" \
    --adam_beta1="0.9" \
    --adam_beta2="0.98" \
    --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="1" \
    --push_to_hub True \
    --adafactor