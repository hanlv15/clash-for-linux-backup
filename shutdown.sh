#!/bin/bash

# 关闭clash服务
PID_NUM=`ps -ef | grep [c]lash-linux-a | wc -l`
PID=`ps -ef | grep [c]lash-linux-a | awk '{print $2}'`
if [ $PID_NUM -ne 0 ]; then
	kill -9 $PID
	# ps -ef | grep [c]lash-linux-a | awk '{print $2}' | xargs kill -9
fi

source /etc/profile.d/proxy.sh off

# 清除环境变量
> /etc/profile.d/proxy.sh

echo -e "\nClash服务关闭成功。"
