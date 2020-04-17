# Lucky-docker
## 1 Introduction
Quickly build docker image with graphical interface to realize deep learning development.Software:
```
  Ubuntu Bionic XFCE desktop with TurboVNC.
  gcc,vim,vscode,anaconda,beyond-compare,git,cmake,gedit.
```
## 2 cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc usage
### BUILD Image
```
git clone https://github.com/luckyluckydadada/Lucky-docker.git
cd Lucky-docker
docker build -t lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc -f Dockerfile-cuda10.0 .
```
### Create Container
```
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30001:8888 -p 30002:6006 -p 30003:6901 -p 30004:5901 \ 
  --name lucky0 \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc 
```
## 3 cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc usage
### BUILD Image
```
git clone https://github.com/luckyluckydadada/Lucky-docker.git
cd Lucky-docker
docker build -t lucky:cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc -f Dockerfile-cuda9.0 .
```
### Create Container
```
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30011:8888 -p 30012:6006 -p 30013:6901 -p 30014:5901 \ 
  --name lucky1 \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc
```
# DO NOT TEST
## 1 cuda10.1-cudnn7-devel-ubuntu18.04-vnc usage
### BUILD Image
```
git clone https://github.com/luckyluckydadada/Lucky-docker.git
cd Lucky-docker
docker build -t lucky:cuda10.1-cudnn7-devel-ubuntu18.04-vnc -f Dockerfile-cuda10.1 .
```
### Create Container
```
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30001:8888 -p 30002:6006 -p 30003:6901 -p 30004:5901 \ 
  --name lucky0 \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda10.1-cudnn7-devel-ubuntu18.04-vnc 
```
## 2 cuda10.2-cudnn7-devel-ubuntu18.04-vnc usage
### BUILD Image
```
git clone https://github.com/luckyluckydadada/Lucky-docker.git
cd Lucky-docker
docker build -t lucky:cuda10.2-cudnn7-devel-ubuntu18.04-vnc -f Dockerfile-cuda10.2 .
```
### Create Container
```
nvidia-docker run --runtime=nvidia -u root -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 30001:8888 -p 30002:6006 -p 30003:6901 -p 30004:5901 \ 
  --name lucky0 \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda10.2-cudnn7-devel-ubuntu18.04-vnc 
```