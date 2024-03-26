参考链接：
https://github.com/ymcui/Chinese-LLaMA-Alpaca/wiki/llama.cpp量化部署

1. 将模型转换为ggml格式

    python convert.py ~/research/AI/GPT/LLama/Vicuna/llama-2-zh/chinese-alpaca-2-13b-act1206-v4-t2

    python convert.py /mnt/data/models/Qwen/Qwen-7B-Chat

2. 量化模型
   ./quantize
   /home/huangshaomang/research/AI/GPT/LLama/Vicuna/llama-2-zh/chinese-alpaca-2-13b-act1206-v4-t2/ggml-model-f16.gguf
   /home/huangshaomang/research/AI/GPT/LLama/Vicuna/llama-2-zh/chinese-alpaca-2-13b-act1206-v4-t2/ggml-model-q5_1.gguf
   q5_1

3. 启动服务
   ./server -m
   /home/huangshaomang/research/AI/GPT/LLama/Vicuna/llama-2-zh/chinese-alpaca-2-13b-act1206-v4-t2/ggml-model-q5_1.gguf
   -c 4096 --host 0.0.0.0 --port 9999
