#��������
docker build -t="wulinyun/docker-vuejs-demo" .
#�鿴���ؾ���
docker images
#���Ϊ˽�вֿ⾵��
docker tag wulinyun/docker-vuejs-demo harbor.landaudev.com/demo/docker-vuejs-demo:latest
#���͵�˽�о���ֿ⵱��
docker push harbor.landaudev.com/demo/docker-vuejs-demo:latest
#��½��
cf login -a https://api.landaudev.com  -u demo -p demo --skip-ssl-validation
#ѡ����֯�ռ�
cf target -o demo -s deployment
#push��PCF
cf push vuejs-demo --docker-image harbor.landaudev.com/demo/docker-vuejs-demo:latest
