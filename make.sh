#!/bin/bash 
rm -rf ./example/log # 清除日志
# 拷贝配置文件
cp ./config/*.yaml ./example/config/
cp ./shell/*.sh ./example/shell/
# 构建
go build -o ./example/
# 压缩
tar -zcvf ./webhooks.tar.gz ./example