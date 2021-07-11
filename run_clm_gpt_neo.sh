#! /bin/bash
./run_clm_flax.py \
    --output_dir $HOME/tmp/gpt-neo-125M-code-clippy \
    --model_name_or_path="EleutherAI/gpt-neo-125M" \
    --dataset_name="code_search_net" \
    --dataset_config_name="python" \
    --text_column_name="func_code_string" \
    --do_train --do_eval \
    --block_size="2048" \
    --per_device_train_batch_size="8" \
    --per_device_eval_batch_size="16" \
    --preprocessing_num_workers="8" \
    --learning_rate="6e-4" \
    --adafactor \
    --warmup_steps="100" \
    --adam_beta1="0.9" \
    --adam_beta2="0.98" \
    --weight_decay="0.01" \
    --overwrite_output_dir \
    --num_train_epochs="10" \
    --logging_steps="100" \
    --eval_steps="200" \
    --push_to_hub="False" \
    --report_to="none" \
    --dtype="bfloat16" \
    --skip_memory_metrics="False" \
    --save_steps="200" \
    --save_total_limit 2 \
    --gradient_accumulation_steps 8 \
    # --resume_from_checkpoint $HOME/gpt-neo-125M-code-clippy/ckpt_201 \
    # --max_train_samples="10000" \
    # --max_eval_samples="1000"
