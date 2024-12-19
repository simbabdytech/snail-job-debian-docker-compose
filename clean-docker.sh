#!/bin/bash

#删除已停止的容器 删除卷

# 删除已退出的容器
exited_containers=$(docker ps -qa --filter "status=exited")
if [ -n "$exited_containers" ]; then
  docker rm $exited_containers
fi

# 删除悬挂的卷
dangling_volumes=$(docker volume ls -qf dangling=true)
if [ -n "$dangling_volumes" ]; then
  docker volume rm $dangling_volumes
fi
