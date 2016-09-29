docker build -t registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-a:$(git rev-parse --short HEAD) .
image_id=$(docker build -q -t registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-a:$(git rev-parse --short HEAD) .)
docker tag ${image_id} registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-a:b${BUILD_NUMBER}
docker tag ${image_id} registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-a:latest
docker push registry.cn-hangzhou.aliyuncs.com/jingshanlb/bluegreen-service-a
