# Lucky-docker
## Introduction
Quickly build docker image with graphical interface to realize deep learning development.

## cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-anaconda-bcompare-vscode
### BUILD Image
git clone -b cuda10.0 https://github.com/luckyluckydadada/Lucky-docker.git
docker build -t lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-anaconda-bcompare-vscode .
### Create Container
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30051:8888 -p 30052:6006 -p 30053:6901 -p 30054:5901 \ 
  --name lucky5 \
  -v ~/data/lucky:/headless/ld 
  lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-anaconda-bcompare-vscode \
  bash
