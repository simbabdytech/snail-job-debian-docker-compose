#!/bin/bash

#删除已停止的容器 删除卷

docker rm $(docker ps -qa --filter "status=exited")
docker volume rm $(docker volume ls -qf dangling=true)

