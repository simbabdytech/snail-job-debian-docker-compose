#!/bin/bash

echo "测试 snail-job 8080"
curl -I http://127.0.0.1:8080/snail-job

sleep 2

echo "测试 snail-job 1788"
# 启动telnet并将其放入后台运行
telnet 127.0.0.1 1788 &


sleep 2

echo "测试 mysql 3306"
mysql -h 127.0.0.1 -P 3306 -u pig -p
#Enter password: 123456
