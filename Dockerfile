FROM lucidfrontier45/miniconda:bionic-cuda-base


ENV PYTORCH_VERSION 1.2
ENV CUDA_VERSION 10.0

RUN set -ex \
    && pkgs=" \
        pytorch=${PYTORCH_VERSION} \
        torchvision \
        cudatoolkit=${CUDA_VERSION} \
    " \
    && conda install -y ${pkgs} -c pytorch \
    && conda clean -i -l -t -y