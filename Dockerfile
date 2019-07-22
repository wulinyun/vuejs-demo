#导入nginx镜像
FROM nginx:1.13.7
MAINTAINER wulinyun <lin.wu@landasoft.com>
#把当前打包工程的html复制到虚拟地址 ，这个文件的中dist的编写请根据实际npm 构建出来的资源文件名称进行修改
ADD ./dist /usr/share/nginx/html
#使用自定义nginx.conf配置端口和监听
# ./docker/nginx.conf /etc/nginx/nginx.conf
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN /bin/bash -c 'echo init ok!!!'
