#!/bin/bash
python3.8 -m venv venv
. venv/bin/activate
pip install Cython==0.29.24
pip install torch==1.8.1+cu111 torchvision==0.9.1+cu111 torchaudio===0.8.1 -f https://download.pytorch.org/whl/torch_stable.html

pip install transformers==4.12.3
pip install Flask==2.0.2
