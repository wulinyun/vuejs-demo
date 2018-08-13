#导入nginx镜像
FROM nginx:1.13.7
MAINTAINER wulinyun <lin.wu@landasoft.com>
#把当前打包工程的html复制到虚拟地址
ADD ./dist /usr/share/nginx/html
#使用自定义nginx.conf配置端口和监听
COPY nginx.conf /etc/nginx/nginx.conf
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN /bin/bash -c 'echo init ok!!!'