#!/bin/bash
cmake -S . -B build -DLLAMA_CUDA=ON
#cmake --build build --config Release -j`nproc`
cmake --build build --config Release --clean-first -j`nproc`

## make server
#make LLAMA_CUDA=1 server -j333
