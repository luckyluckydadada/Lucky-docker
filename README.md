# Lucky-docker
## 1 Introduction
Quickly build docker image with graphical interface to realize deep learning development.Ubuntu18.04 Bionic XFCE desktop with TurboVNC.
## 2 cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc usage
### BUILD Image
git clone -b cuda10.0 https://github.com/luckyluckydadada/Lucky-docker.git
docker build -t lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc .
### Create Container
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30001:8888 -p 30002:6006 -p 30003:6901 -p 30004:5901 \ 
  --name lucky0 \
  -v ~/data/lucky:/headless/ld \
  lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc 

## 3 cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc usage
### BUILD Image
git clone -b cuda9.0 https://github.com/luckyluckydadada/Lucky-docker.git
docker build -t lucky:cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc .
### Create Container
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30011:8888 -p 30012:6006 -p 30013:6901 -p 30014:5901 \ 
  --name lucky1 \
  -v ~/data/lucky:/headless/ld \ 
  lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc

