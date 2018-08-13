#构建镜像
docker build -t="wulinyun/docker-vuejs-demo" .
#查看本地镜像
docker images
#标记为私有仓库镜像
docker tag wulinyun/docker-vuejs-demo harbor.landaudev.com/demo/docker-vuejs-demo:latest
#推送到私有镜像仓库当中
docker push harbor.landaudev.com/demo/docker-vuejs-demo:latest
#登陆云
cf login -a https://api.landaudev.com  -u demo -p demo --skip-ssl-validation
#选择组织空间
cf target -o demo -s deployment
#push到PCF
cf push vuejs-demo --docker-image harbor.landaudev.com/demo/docker-vuejs-demo:latest
