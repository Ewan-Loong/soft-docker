# README

记录常见的软件服务的镜像化部署，使用Dockerfile构建简单自定义镜像使用;

## 用法
请根据自己的具体项目进行调整增添删减

### 镜像化部署
找到想要部署、使用的服务，如hadoop、oracle、flink，使用git克隆或者直接复制对应目录下docker-compose.yml的内容，使用docker-compose命令进行部署； 

### Dockerfile构建
在/image_build目录下找到对应服务构建的文件夹，使用git克隆此目录，使用 docker build -f Dockerfile -t 镜像名:标签 . 命令进行构建；
注：Dockerfile中涉及到的服务源码、tar包，如有不同安装需求，请在对应官网进行下载，替换相关路径；


## 主要项目负责人

[@Ewan](https://github.com/Ewan-C196)