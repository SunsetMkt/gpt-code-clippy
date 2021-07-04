#! /bin/bash
./run_clm_flax.py \
    --output_dir $HOME/gpt-neo-2.7B-code-clippy \
    --model_name_or_path="EleutherAI/gpt-neo-2.7B" \
    --dataset_name="code_search_net" \
    --dataset_config_name="python" \
    --do_train --do_eval \
    --block_size="128" \
    --per_device_train_batch_size="1" \
    --per_device_eval_batch_size="1" \
    --dtype="bfloat16" \
    --learning_rate="5e-3" \
    --warmup_steps="1000" \
    --adam_beta1="0.9" \
    --adam_beta2="0.98" \
    --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="1" \
    --push_to_hub False