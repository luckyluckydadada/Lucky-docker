# Lucky-docker
## 1 Introduction
Quickly build docker image with graphical interface to realize deep learning development.Software:
```
  Ubuntu Bionic XFCE desktop with TurboVNC.
  gcc,vim,vscode,anaconda,beyond-compare,git,cmake,gedit.
```
Note,if you restart the container, please restart vncserver:
```
  vncserver :0 -geometry 1920x1080
```
Note,LUCKYID 取值0~9，防止多个容器时，映射端口冲突，如：
```
  LUCKYID=0
```
Note,-noconda-lucky结尾的的Dockerfile请注意：
```
  1 没有anaconda环境，使用/usr/bin/python 和/usr/bin/python3 ，补装了pip3
  2 新增了非root用户lucky，给了sudo权限，家目录为/headless
  3 root和lucky密码都为1
  4 -noconda-lucky结尾的的Dockerfile不要用 -u root 创建容器，因为root的/root/.bashrc配置不如/headless/.bashrc配置不如全面
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
  -p 300${LUCKYID}1:8888 -p 300${LUCKYID}2:6006 -p 300${LUCKYID}3:6901 -p 300${LUCKYID}4:5901 \ 
  --name lucky${LUCKYID} \
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
  -p 300${LUCKYID}1:8888 -p 300${LUCKYID}2:6006 -p 300${LUCKYID}3:6901 -p 300${LUCKYID}4:5901 \ 
  --name lucky${LUCKYID} \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda9.0-cudnn7.6.4-devel-ubuntu16.04-vnc
```
## 4 cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-noconda-lucky usage
### BUILD Image
```
git clone https://github.com/luckyluckydadada/Lucky-docker.git
cd Lucky-docker
docker build -t lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-noconda-lucky -f Dockerfile-cuda10.0-noconda-lucky .
```
### Create Container
```
nvidia-docker run --runtime=nvidia -u lucky -it \
  -e NVIDIA_VISIBLE_DEVICES=0,1 \
  -p 300${LUCKYID}1:8888 -p 300${LUCKYID}2:6006 -p 300${LUCKYID}3:6901 -p 300${LUCKYID}4:5901 \ 
  --name lucky${LUCKYID} \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda10.0-cudnn7.6.5-devel-ubuntu18.04-vnc-noconda-lucky 
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
  -p 300${LUCKYID}1:8888 -p 300${LUCKYID}2:6006 -p 300${LUCKYID}3:6901 -p 300${LUCKYID}4:5901 \ 
  --name lucky${LUCKYID} \
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
  -p 300${LUCKYID}1:8888 -p 300${LUCKYID}2:6006 -p 300${LUCKYID}3:6901 -p 300${LUCKYID}4:5901 \ 
  --name lucky${LUCKYID} \
  -v YourLocalDir:/headless/lucky \
  lucky:cuda10.2-cudnn7-devel-ubuntu18.04-vnc 
```
