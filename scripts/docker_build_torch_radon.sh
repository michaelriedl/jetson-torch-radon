#!/usr/bin/env bash

set -e
source scripts/docker_base.sh

#
# PyTorch
#
build_pytorch()
{
    local pytorch_url=$1
    local pytorch_whl=$2
    local pytorch_tag=$3

    echo "building PyTorch $pytorch_whl"

    sh ./scripts/docker_build.sh $pytorch_tag Dockerfile.pytorch \
            --build-arg BASE_IMAGE=$BASE_IMAGE \
            --build-arg PYTORCH_URL=$pytorch_url \
            --build-arg PYTORCH_WHL=$pytorch_whl \

    echo "done building PyTorch $pytorch_whl"
}

#
# Function calls for various PyTorch versions
#

# PyTorch v1.2.0
#build_pytorch "https://nvidia.box.com/shared/static/lufbgr3xu2uha40cs9ryq1zn4kxsnogl.whl" \
#              "torch-1.2.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.2-py3" \

# PyTorch v1.3.0
#build_pytorch "https://nvidia.box.com/shared/static/017sci9z4a0xhtwrb4ps52frdfti9iw0.whl" \
#              "torch-1.3.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.3-py3" \

# PyTorch v1.4.0
#build_pytorch "https://nvidia.box.com/shared/static/c3d7vm4gcs9m728j6o5vjay2jdedqb55.whl" \
#              "torch-1.4.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.4-py3" \

# PyTorch v1.5.0
#build_pytorch "https://nvidia.box.com/shared/static/3ibazbiwtkl181n95n9em3wtrca7tdzp.whl" \
#              "torch-1.5.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.5-py3" \

# PyTorch v1.6.0
#build_pytorch "https://nvidia.box.com/shared/static/9eptse6jyly1ggt9axbja2yrmj6pbarc.whl" \
#              "torch-1.6.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.6-py3" \
              
# PyTorch v1.7.0
build_pytorch "https://nvidia.box.com/shared/static/cs3xn3td6sfgtene6jdvsxlr366m2dhq.whl" \
              "torch-1.7.0-cp36-cp36m-linux_aarch64.whl" \
              "l4t-pytorch:r$L4T_VERSION-pth1.7-py3-radon" \

# PyTorch v1.8.0
#build_pytorch "https://nvidia.box.com/shared/static/p57jwntv436lfrd78inwl7iml6p13fzh.whl" \
#              "torch-1.8.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.8-py3" \
    
# PyTorch v1.9.0
#build_pytorch "https://nvidia.box.com/shared/static/h1z9sw4bb1ybi0rm3tu8qdj8hs05ljbm.whl" \
#              "torch-1.9.0-cp36-cp36m-linux_aarch64.whl" \
#              "l4t-pytorch:r$L4T_VERSION-pth1.9-py3" \
