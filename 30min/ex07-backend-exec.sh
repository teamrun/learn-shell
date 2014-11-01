#!/bin/sh

# 每五秒钟touche一个文件, 文件名为当前时间
while true
do
    fileName=`date "+%H:%M:%S"`
    touch "$fileName.txt"
    sleep 5
done

# 执行方式: sh ./ex-07-backend-exec.sh &
# 输出: [1] 7997 
# pid 可以用来kill

# 使用&符号在后台执行命令或脚本后，如果你退出登录，这个命令就会被自动终止掉。要避免这种情况，你可以使用nohup命令
# nohup ./my-shell-script.sh &
# nohup的意思在终端断开(hang up)的时候, 
# 服务器端仍然运行,注意要在nohup命令运行后按任意键回到shell提示符后再断开.

# 见 http://hankjin.blog.163.com/blog/static/337319372010111492348473/