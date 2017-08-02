#!/bin/bash
#删除none的镜像
#By:xiaofeng.di mail：w5750584@gmail.com
docker images  | grep none | awk '{print $3}' | while read line ;do
	docker tag $line test:rmi
	docker rmi -f test:rmi
done
