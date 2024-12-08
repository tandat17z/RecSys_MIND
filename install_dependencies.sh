# the versions of torch and torchtext must be matched (https://pypi.org/project/torchtext)
# the CUDA version must be matched with torch-scatter (https://github.com/rusty1s/pytorch_scatter)
TORCH_VERSION=1.12.1
TORCHTEXT_VERSION=0.13.1
CUDA_VERSION=cu113


pip install torch==${TORCH_VERSION} --extra-index-url https://download.pytorch.org/whl/${CUDA_VERSION}
pip install torchtext==${TORCHTEXT_VERSION} --extra-index-url https://download.pytorch.org/whl/${CUDA_VERSION}
pip install nltk
pip install numpy
pip install sklearn
pip install torch-scatter==2.1.0+pt112cu113 -f https://data.pyg.org/whl/torch-1.12.1+cu113.html
