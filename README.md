# GoWebHooks

> 一个通过配置 yaml 文件的 webhooks 部署脚本

## 什么是 webhooks?

> 作为一名运维的同学, 前端想你提了一个需求:“ 我想每次 push 到云端都可以在服务器上实时预览! ”

你想了半天想出了第一个解决方案

> 服务器上使用 cron 每 10s 自动执行 git pull

你开开心心的去摸鱼了~

> 第二天, 前端的同学开始学 Vue, 又提了一个要求:“ 可不可以每次在服务器上构建, 而不是本地构建完上传到远端? ”

这次之前的方式行不通了, 每十秒重新构建一次, 小的项目还好, 大的项目10s可构建不完

你百度了一番, 发现各大 Git 平台都提供了 WebHooks

> 每次向仓库 push 时, 都会向配置好的网址发送 http 请求, 这样服务器收到请求后, 就可以 pull 下代码, 并执行 shell 脚本啦

你读了本项目的`README.md`, 使用本项目完成了前端的需求, 详见`example`文件夹

## 使用

### 下载编译好的程序

```bash
# 1. 下载 relase 中的文件

cd /opt
# 下载 Releases
wget https://github.com/fzf404/GoWebHooks/releases/download/v2.1/webhooks.tar.gz
# 国内加速下载
wget https://hub.fastgit.org/fzf404/GoWebHooks/releases/download/v2.1/webhooks.tar.gz

# 2. 解压

tar -zxvf webhooks.tar.gz
mv example webhooks

# 3. 编辑配置文件

cd webhooks
# hooks 配置文件
vim config/config.yaml # 配置文件中的说明很详细
# 需要执行的 shell 脚本
vim shell/test.sh
# 随便写点什么
#!/bin/bash
echo "hello"

# 4. 运行

chmod +x ./webhooks
./webhooks

# 如下输出则为运行成功
2021/12/12 21:31:16 🆕 demo: Init Success.
2021/12/12 21:31:16 🆕 test: Init Success.
```

### 自行编译

```bash
# clone源码
git clone https://github.com/fzf404/GoWebHooks
# 运行
go run main.go
# 编译
make.sh
```
